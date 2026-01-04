import React from 'react';
import parse from 'html-react-parser';

const NewsDetails = (props) => {
    const longDes = props.details?.full_des;

    // function to detect html inside string
    const containsHTML = (str) => /<\/?[a-z][\s\S]*>/i.test(str);

    return (
        <div>
            <div className="container">
                <h4 className="my-3">{props.details?.title}</h4>
                <hr />
                <div className="row">
                    <div className="col-md-12 col-lg-12">
                        <img className="w-100 py-2" src={props.details?.img1} />

                        {/* Show HTML or Plain Text Automatically */}
                        {typeof longDes === "string" ? (
                            containsHTML(longDes) ? (
                                parse(longDes)       // render HTML
                            ) : (
                                <p>{longDes}</p>     // render plain text
                            )
                        ) : (
                            <p className="text-danger">No content available</p>
                        )}
                    </div>
                </div>
            </div>
        </div>
    );
};

export default NewsDetails;
