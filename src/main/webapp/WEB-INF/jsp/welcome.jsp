<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
    // Create cookies for first and last names.
    //Cookie policy = new Cookie("CloudFront-Policy",
    //        "=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kdzB1Mzl1MnFzdm5iLmNsb3VkZnJvbnQubmV0L0RpZWdvZmFjZS5qcGciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE1MzY3NTA2NzF9fX1dfQ__");
    //Cookie signature = new Cookie("CloudFront-Signature",
    //        "iy182zXHe5GiaEcDBY2tjQTFNKXyc1PXuscbRKN9h31vggOAMGucEVNMZEMZIzWjAnSD1yLyev3ADxqJLGdGdYdhAQJTK5kHrOqp3~GOH8vvuApYPeK-o0o6a6atwTwT3nVurfA8Wruu--kAiDT8VngqVseRfF~jXnDWXiI6ijTZ9woa55nG2y4QzzWgChoBr6fYMfKr87zW2EyqbRdcmI5u2XesVQdp3uRguUiYRguWzTfNBtsVOKON5Eddzxa51nXqoLhwnlOIEhht2wRVDAHFoWK2E92Pb4H67T1rcHZTOM8bk9uuRCdUcTt6FPAs27VqGHgKW70tjUd2hMv~Wg__");
    //Cookie keyPairId = new Cookie("CloudFront-Key-Pair-Id",
    //        "APKAJGK4YW2ASS6CZMVQ");

    // Set expiry date after 24 Hrs for both the cookies.
    //policy.setMaxAge(60*60*24);
    //signature.setMaxAge(60*60*24);
    //keyPairId.setMaxAge(60*60*24);


    // Add both the cookies in the response header.
    //response.addCookie( policy );
    //response.addCookie( signature );
    //response.addCookie( keyPairId );



//'Cookie: CloudFront-Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kdzB1Mzl1MnFzdm5iLmNsb3VkZnJvbnQubmV0L0RpZWdvZmFjZS5qcGciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE1MzY3NTA2NzF9fX1dfQ__'
//-H 'Cookie: CloudFront-Signature=iy182zXHe5GiaEcDBY2tjQTFNKXyc1PXuscbRKN9h31vggOAMGucEVNMZEMZIzWjAnSD1yLyev3ADxqJLGdGdYdhAQJTK5kHrOqp3~GOH8vvuApYPeK-o0o6a6atwTwT3nVurfA8Wruu--kAiDT8VngqVseRfF~jXnDWXiI6ijTZ9woa55nG2y4QzzWgChoBr6fYMfKr87zW2EyqbRdcmI5u2XesVQdp3uRguUiYRguWzTfNBtsVOKON5Eddzxa51nXqoLhwnlOIEhht2wRVDAHFoWK2E92Pb4H67T1rcHZTOM8bk9uuRCdUcTt6FPAs27VqGHgKW70tjUd2hMv~Wg__'
//-H 'Cookie: CloudFront-Key-Pair-Id=APKAJGK4YW2ASS6CZMVQ'
//https://dw0u39u2qsvnb.cloudfront.net/Diegoface.jpg
%>


<html lang="en">

<body>
<br>
Message: ${message}
<br>
<img src="https://dw0u39u2qsvnb.cloudfront.net/Diegoface.jpg"/>
<br>


</body>

</html>
