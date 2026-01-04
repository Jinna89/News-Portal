import React from "react";
import PlainLayout from "../components/master/PlainLayout";
import Hero from "../components/news/Hero";
import NewsList from "../components/news/NewsList";
import PopularList from "../components/news/PopularList";

async function getData() {
  try {
    const LattestNewsRes = await fetch(`${process.env.HOST}/api/news/latest`);
    const SliderNewsRes = await fetch(
      `${process.env.HOST}/api/news/type?type=Slider`
    );
    const FeaturedNewsRes = await fetch(
      `${process.env.HOST}/api/news/type?type=Featured`
    );
    const PopularNewsRes = await fetch(
      `${process.env.HOST}/api/news/type?type=Popular`
    );

    const LattestNewsData = await LattestNewsRes.json();
    const SliderNewsData = await SliderNewsRes.json();
    const FeaturedNewsData = await FeaturedNewsRes.json();
    const PopularNewsData = await PopularNewsRes.json();

    return {
      Latest: LattestNewsData?.data || [],
      Slider: SliderNewsData?.data || [],
      Featured: FeaturedNewsData?.data || [],
      Popular: PopularNewsData?.data || [],
    };
  } catch (error) {
    console.error("Data fetch error:", error);
    return { LattestNews: [] };
  }
}

const page = async () => {
  const data = await getData();

  return (
    <PlainLayout>
      <Hero featured={data["Featured"]} slider={data["Slider"]} />
      <div className="container mt-4">
        <div className="row">
          <div className="col-md-9 col-lg-9 col-sm-12 col-12 px-3">
            <NewsList latest={data["Latest"]} />
          </div>
          <div className="col-md-3 col-lg-3 col-sm-12 col-12 px-3">
            <PopularList popular={data["Popular"]} />
          </div>
        </div>
      </div>
    </PlainLayout>
  );
};

export default page;
