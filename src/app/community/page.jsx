import React from "react";
import PlainLayout from "@/components/master/PlainLayout";
import parse from "html-react-parser";

async function getData() {
  let Community = (
    await (await fetch(`${process.env.HOST}/api/policy?type=community`)).json()
  )["data"];
  return Community;
}

const page = async () => {
  const Community = await getData(); // array

  return (
    <PlainLayout>
      <div className="container mt-3">
        <div className="row">
          <div className="col-12">
            <div className="card p-4">

              {Community?.length > 0 ? (
                Community.map((item, i) => (
                  <div key={i} className="mb-3">
                    {parse(item.long_des)}
                  </div>
                ))
              ) : (
                <p className="text-danger">No content available</p>
              )}

            </div>
          </div>
        </div>
      </div>
    </PlainLayout>
  );
};

export default page;
