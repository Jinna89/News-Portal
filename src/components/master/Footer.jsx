import React from "react";
import Link from "next/link";
import Subscribe from "../news/Subscribe";

const Footer = (props) => {
  return (
    <div>
      <div className="section-footer">
        <div className="py-5 bg-dark">
          <div className="container">
            <div className="row">
              <div className="col-md-3 col-sm-6 p-3">
                <h5 className="text-white fw-bold my-3"> ABOUT </h5>
                <p className="text-white"> {props.data?.social[0]?.about} </p>
                <div className="d-flex justify-content-center justify-content-sm-start">
                  <div className="d-flex align-items-center">
                    <a
                      target="blank"
                      href={props.data?.social[0]?.facebook || ""}
                    >
                      _
                      <div className="d-flex justify-content-center align-items-center">
                        <i className="h3 text-white bi bi-facebook"></i>
                      </div>
                    </a>
                    <a
                      target="blank"
                      href={props.data?.social[0]?.youtube || ""}
                    >
                      _
                      <div className="d-flex justify-content-center align-items-center">
                        <i className="h3 text-white mx-2 bi bi-youtube"></i>
                      </div>
                    </a>
                    <a
                      target="
blank"
                      href={props.data?.social[0]?.twitter || ""}
                    >
                      _
                      <div className="d-flex justify-content-center align-items-center">
                        <i className=" h3 text-white mx-2 bi bi-twitter"></i>
                      </div>
                    </a>
                    <a
                      target="blank"
                      href={props.data?.social[0]?.linkedin || ""}
                    >
                      _
                      <div className="d-flex justify-content-center align-items-center">
                        <i className=" h3 text-white mx-2 bi bi-linkedin"></i>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              <div className="col-md-3 col-sm-6 p-3">
                <h5 className="text-white fw-bold my-3">RECOMMENDED</h5>
                {
                  props.data.categories.map((item, i)=>{
                    if(i<5){
                      return(
                        <Link
                          key={i}
                          className="nav-link text-white my-1"
                          href={`/category?id=${item.id}`}
                        >
                          {item.name}
                        </Link>
                      )
                    }
                  })
                }
              </div>
              <div className=" col-md-3 col-sm-6 p-3">
                <h5 className="text-white fw-bold my-3"> LEGAL </h5>
                <ul className="list-unstyled text-white">
                  <li className="my-1">
                    <Link href="/privacy" className="nav-link">
                      Privacy Policy
                    </Link>
                  </li>
                  <li className="my-1">
                    <Link href="/community" className="nav-link">
                      Terms & Conditions
                    </Link>
                  </li>
                </ul>
              </div>
              <div className="col-md-3 col-sm-6 p-3">
                <Subscribe />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Footer;
