Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F4756C9B6
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 15:56:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 696CC38405D
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 09:56:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657375012; bh=CbwadPQMgN3hBH4aksaYtcgBFdybd9waxPqcTC1+OKk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LyIfsm2QdYJvIj9Ef1ZQw4maoYwH+JMmboSSjZkXrfn6XWGqky6XgCnWgKmGgF3h7
	 qtVuAISi9/3uneTYbZgXaWS3IKmvbCJ3exNCVhI5GXiblZIbWUDpQAuy9lwEPSh6Nx
	 cUzA9kBPJRXNuj6FS6IcnNSLXNHRei+uYOivjijtfqJV78O/K+ij7xN3yFVy2D5DLY
	 jMyHsofw+V9CnN/qWEraUabUDpuKXzvmgliSvWUXOO08Lx3OaUUnMvhdpswq36jHyh
	 cLP9ygMkhcgmASqSYAg/ehh0O5Ay5CCWWMn5kn2S3Hh94BxvTkFezoJL4+Wdf9blCH
	 wjMu1SYoaqEOw==
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B9DA383E84
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 09:55:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T+Cpsny1";
	dkim-atps=neutral
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-31cf1adbf92so11623227b3.4
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 06:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZRTHqpMwpNfAQBK9TbkAT1O6oA29gVscuP1SZXuXzog=;
        b=T+Cpsny1/3OF3UZJisAJNrAgo/Dyc7iWmEzSPYDOHXvIacpSZSmveNxDTN+xZdqE71
         Tr3V5OpDy2YSHU1ocQLB4tmUmINsX/VstjgEpdlN3loQSVonjSx2tAOxZn6m8fS5sTrr
         z70JFmz0usgnpWAcRCZpDuH1thiaAGDaOZFi71Rs4kOXggm6YX7mpLq+AOtPDWOyjl68
         4A011Bz65DAxEK3+CZKodcCWbyudQDYMFYjF8vSXDSlrcOcSyKUizJZVuu3cHi5AdBMy
         dBPhjmWoulsZCSLS/sFAwYKiJVJtLY5jLU9qM14H5yvScAEcUj0gBG/X04YTTQqGAW/M
         4oyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZRTHqpMwpNfAQBK9TbkAT1O6oA29gVscuP1SZXuXzog=;
        b=5JwB7LvHKWVMSQCGMbsWG0O4hoyiW5MYv+fEo8AWDGQrxK4ZdI6hq6Gl2/fBoDQRDN
         +L/9R8Yb662cPzmjAGzMjxa0Ixv6EYjQKIkOxzLknL2WrmSXIWcbTIagGTlpS0b2K1oZ
         AmEGP7Bkzz6k95mQvUupq8G7K1+RFQ67zzHiRRS8JLP2pky8LRiLT74bDfYGTM4DImrR
         BDeRgLVoHjh4b4S/zener6DMAfemOFvjsJuO+upOFWfiUomjWehrmsR4lR9H2Avf1Ic1
         MKkB8BAWrS0EV1shLqZ6OCuOe2lTjVTHuELmiKViS9ubAwLxi8bnvRDNm520qe9Ze+1L
         dIQA==
X-Gm-Message-State: AJIora+xAcqXAv5iG7K4JBom6diq9GYwIO68/Uij08j9v9p5wxiMZTme
	FxIDjd7pMvkf2WwwDks6GlCpVe2waJ3nAXWVJFrpEpEJbsjNFl17
X-Google-Smtp-Source: AGRyM1uKo3sh+MfojW47vxqTIeuMv1fZMKsSaYm5okH2UqDcSupdXuHJqBhy43sGb0ik9/IQUTDBJu18fPzS48VM5Vk=
X-Received: by 2002:a0d:d783:0:b0:31c:ad2c:fd75 with SMTP id
 z125-20020a0dd783000000b0031cad2cfd75mr9541025ywd.97.1657374941645; Sat, 09
 Jul 2022 06:55:41 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Sat, 9 Jul 2022 18:25:30 +0430
Message-ID: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: VSSLF6K3IFGUJHJRVKS7QPDDD2A2LYA2
X-Message-ID-Hash: VSSLF6K3IFGUJHJRVKS7QPDDD2A2LYA2
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VSSLF6K3IFGUJHJRVKS7QPDDD2A2LYA2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4715075086674846519=="

--===============4715075086674846519==
Content-Type: multipart/alternative; boundary="000000000000a812a905e35facd7"

--000000000000a812a905e35facd7
Content-Type: text/plain; charset="UTF-8"

I know that data in USRP on FPGA is in format big-endian sint16, but in
Gnuradio data is in format complex float 32...
I found these links
The conversion encompasses several elements. The most obvious is that of
the data type: Most FPGAs use integer data types, the most common being
complex 16-bit integers (16 bit for I and Q, respectively). If the user
wants his data in float, the converter casts the data type and also scales
the data, typically such that the full dynamic range of the 16-Bit integers
is mapped onto the float range of -1 to 1. The converter also handles the
endianness: On the network, data is usually stored as big-endian, whereas
most platforms store data internally as little-endian.

https://files.ettus.com/manual/classuhd_1_1convert_1_1converter.html#a371906249b8bd546b98bd0a867e70c88
https://files.ettus.com/manual/page_converters.html

According to them, I want to use the Convert class to convert complex float
32 to sint16....
But my program is can not run successfully, Anyone can guide me on How
should I use the Converter class...!!!
Thanks in advance

#include <uhd/convert.hpp>
>
>


>  int main()
>
>    {
>
>    int16_t *in_p;
>
>    float *out_p;
>
>    *in_p=1234;
>
>    uhd::convert::converter::input_type in(in_p);
>
>    uhd::convert::converter::output_type out(out_p);
>
>    uhd::convert::converter::sptr convert;
>
>    convert->conv(in,out,1);
>
>    std::cout<<*out_p;
>
>       }
>
>

--000000000000a812a905e35facd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I know that data in USRP on FPGA is in format big-endian s=
int16, but in Gnuradio data is in format complex float 32...<div>I found th=
ese links</div><div>The conversion encompasses several elements. The most o=
bvious is that of the data type: Most FPGAs use integer data types, the mos=
t common being complex 16-bit integers (16 bit for I and Q, respectively). =
If the user wants his data in float, the converter casts the data type and =
also scales the data, typically such that the full dynamic range of the 16-=
Bit integers is mapped onto the float range of -1 to 1. The converter also =
handles the endianness: On the network, data is usually stored as big-endia=
n, whereas most platforms store data internally as little-endian.<br></div>=
<div><br></div><div><a href=3D"https://files.ettus.com/manual/classuhd_1_1c=
onvert_1_1converter.html#a371906249b8bd546b98bd0a867e70c88">https://files.e=
ttus.com/manual/classuhd_1_1convert_1_1converter.html#a371906249b8bd546b98b=
d0a867e70c88</a></div><div><a href=3D"https://files.ettus.com/manual/page_c=
onverters.html">https://files.ettus.com/manual/page_converters.html</a><br>=
</div><div><br></div><div>According to them, I want to use the Convert clas=
s to convert complex float 32 to sint16....</div><div>But my program is can=
 not run successfully, Anyone can guide me on How should I use the Converte=
r class...!!!</div><div>Thanks in advance</div><div><br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><p style=3D"margin:0px;white-space:pre=
-wrap">

</p><pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rg=
b(0,0,128)">#include</span><span style=3D"color:rgb(192,192,192)"> </span><=
span style=3D"color:rgb(0,128,0)">&lt;uhd/convert.hpp&gt;</span></pre></blo=
ckquote><div><br></div><div>=C2=A0 =C2=A0 =C2=A0=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><pre style=3D"margin-top:0px;margin-bott=
om:0px"><span style=3D"color:rgb(192,192,192)"> int main()</span>=C2=A0</pr=
e></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><pre style=
=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(128,0,128)">=
   {</span>=C2=A0</pre></blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"c=
olor:rgb(128,0,128)">   int16_t</span><span style=3D"color:rgb(192,192,192)=
"> </span>*<span style=3D"color:rgb(9,46,100)">in_p</span>;</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(19=
2,192,192)">   </span><span style=3D"color:rgb(128,0,128)">float</span><spa=
n style=3D"color:rgb(192,192,192)"> </span>*<span style=3D"color:rgb(9,46,1=
00)">out_p</span>;</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(19=
2,192,192)">   </span>*<span style=3D"color:rgb(9,46,100)">in_p</span>=3D<s=
pan style=3D"color:rgb(0,0,128)">1234</span>;</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(19=
2,192,192)">   </span><span style=3D"color:rgb(128,0,128)">uhd</span>::<spa=
n style=3D"color:rgb(128,0,128)">convert</span>::<span style=3D"color:rgb(1=
28,0,128)">converter</span>::<span style=3D"color:rgb(128,0,128)">input_typ=
e</span><span style=3D"color:rgb(192,192,192)"> </span><span style=3D"color=
:rgb(9,46,100)">in</span>(<span style=3D"color:rgb(9,46,100)">in_p</span>);=
</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(19=
2,192,192)">   </span><span style=3D"color:rgb(128,0,128)">uhd</span>::<spa=
n style=3D"color:rgb(128,0,128)">convert</span>::<span style=3D"color:rgb(1=
28,0,128)">converter</span>::<span style=3D"color:rgb(128,0,128)">output_ty=
pe</span><span style=3D"color:rgb(192,192,192)"> </span><span style=3D"colo=
r:rgb(9,46,100)">out</span>(<span style=3D"color:rgb(9,46,100)">out_p</span=
>);</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(12=
8,0,128)">   uhd</span>::<span style=3D"color:rgb(128,0,128)">convert</span=
>::<span style=3D"color:rgb(128,0,128)">converter</span>::<span style=3D"co=
lor:rgb(128,0,128)">sptr</span><span style=3D"color:rgb(192,192,192)"> </sp=
an><span style=3D"color:rgb(9,46,100)">convert</span>;</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(19=
2,192,192)">   </span><span style=3D"color:rgb(9,46,100)">convert</span><sp=
an style=3D"color:rgb(0,103,124)">-&gt;</span><span style=3D"color:rgb(0,10=
3,124)">conv</span>(<span style=3D"color:rgb(9,46,100)">in</span>,<span sty=
le=3D"color:rgb(9,46,100)">out</span>,<span style=3D"color:rgb(0,0,128)">1<=
/span>);</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(19=
2,192,192)">   </span><span style=3D"font-family:Arial,Helvetica,sans-serif=
;color:rgb(128,0,128)">std</span><span style=3D"font-family:Arial,Helvetica=
,sans-serif">::</span><span style=3D"font-family:Arial,Helvetica,sans-serif=
;color:rgb(206,92,0)">cout</span><span style=3D"font-family:Arial,Helvetica=
,sans-serif;color:rgb(0,103,124)">&lt;&lt;</span><span style=3D"font-family=
:Arial,Helvetica,sans-serif">*</span><span style=3D"font-family:Arial,Helve=
tica,sans-serif;color:rgb(9,46,100)">out_p</span><span style=3D"font-family=
:Arial,Helvetica,sans-serif">;</span>=C2=A0</pre></blockquote><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><pre style=3D"margin-top:0px;margin-bo=
ttom:0px"><span style=3D"font-family:Arial,Helvetica,sans-serif">      }</s=
pan></pre></blockquote><div>=C2=A0</div></div>

--000000000000a812a905e35facd7--

--===============4715075086674846519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4715075086674846519==--
