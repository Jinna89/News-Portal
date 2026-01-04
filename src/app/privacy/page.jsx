import React from "react";
import PlainLayout from "@/components/master/PlainLayout";
import parse from "html-react-parser";

async function getData() {
  let Privacy = (
    await (await fetch(`${process.env.HOST}/api/policy?type=privacy`)).json()
  )["data"];
  return Privacy;
}

const page = async () => {
  const Privacy = await getData(); // array

  return (
    <PlainLayout>
      <div className="container mt-3">
        <div className="row">
          <div className="col-12">
            <div className="card p-4">

              {Privacy?.length > 0 ? (
                Privacy.map((item, i) => (
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
