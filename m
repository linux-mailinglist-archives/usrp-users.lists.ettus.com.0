Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD0B4E31D7
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 21:32:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E47A3855A8
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 16:32:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rujb8aM1";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 925A0384D98
	for <USRP-users@lists.ettus.com>; Mon, 21 Mar 2022 16:31:25 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id s16so12596994qks.4
        for <USRP-users@lists.ettus.com>; Mon, 21 Mar 2022 13:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=LhwuOox/BegAWHC4ituL45+kwe7Qt+zCBTAIMUkutkY=;
        b=Rujb8aM135CumC4plATson5Na7yfhFziNtvKQ9genzQWox03p9mDzpUTgQvqFNPMwv
         w0LTAlGSl55af67IiJxRu9GAvaGcaRnhQsdZ6Renj8/ebly3pmN0r+BTJsZKy7Sskpba
         LrxtMyzc3jaCOmStoNRlI9c9QbEeo4SviD+lzAJwDVzZiSiF/vqvgJAf48yi571Y01LL
         waUOvBWWMrY0y0W69GL6Jt/GMGxeQznzf+RyJKLNTZIsxt3R2pnp7oE02s/KV0eLRe7H
         tHqM++BDbjeDu6CrDn0RFiBk77LdHnjD6CxaZVN9eUtwQg+BzXGkZnaahd07LpLXdNNw
         /RaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=LhwuOox/BegAWHC4ituL45+kwe7Qt+zCBTAIMUkutkY=;
        b=pd4iyqpnND6/cW3N9e4eC1OjphQ7XTECB27pacLl/ZFYk14wUP2LqajCsna6spjqmj
         e0vHxArWvpZCX+2G0zTt7ml+YFwIQ/TVh8UwrpfcMpaY18l8o7ffK4YozKVwOMSrsLgk
         Cxq2kuwIYvqJgzkDhnomJgUbfYXpNVxRec5IrgEGXAg1Ry6kwQawZ73zEUuxVhT38jHL
         SjD5Ue4VVQkCte0JiTekW5PyDvcS9ht9lvBvJMveZ8+xPf2QtKqLdQ9PECOwR5OCTAgu
         9fsUQJP52oYRU/zggdDFKCcTK/m3zIjXQi42KxUZkRm4QGSLwun5LMBdH+heEjqo4LR2
         Z5iQ==
X-Gm-Message-State: AOAM533Q/m0sIHTEg7RtCov4IHfpHNPKy+RG3b4NJjsGcnTwyoTyrvbU
	E3p+74s02LjllTV++YS5nBKlUZae6y4=
X-Google-Smtp-Source: ABdhPJyxnHXx8mbrD1l6LcmwqRfjae2PS54Jy786754DL63v8fj5no34TNTRp5zw1BcmBc46qX1Wug==
X-Received: by 2002:a05:620a:248c:b0:67d:b829:2570 with SMTP id i12-20020a05620a248c00b0067db8292570mr13572124qkn.429.1647894685002;
        Mon, 21 Mar 2022 13:31:25 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id t19-20020ac85893000000b002e1afa26591sm13115688qta.52.2022.03.21.13.31.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 13:31:24 -0700 (PDT)
Message-ID: <b7c21a4b-2acb-50ec-7977-834335645658@gmail.com>
Date: Mon, 21 Mar 2022 16:31:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Abby Mize <abby@lunasonde.com>
References: <BN6PR03MB3137F5CCAACE6824D0756891C8169@BN6PR03MB3137.namprd03.prod.outlook.com>
 <E319DE84-E73B-49B3-9E70-A4EB2DE4056E@gmail.com>
 <BN6PR03MB31377AFA80B5870000923E19C8169@BN6PR03MB3137.namprd03.prod.outlook.com>
 <2a628637-4c9e-cb2c-9741-fe36ca6ca98e@gmail.com>
 <BN6PR03MB313742C54AC553D16633ADCAC8169@BN6PR03MB3137.namprd03.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN6PR03MB313742C54AC553D16633ADCAC8169@BN6PR03MB3137.namprd03.prod.outlook.com>
Message-ID-Hash: JIW6K4FGNCXPG7BUIGHTS4GXO7F7XIB7
X-Message-ID-Hash: JIW6K4FGNCXPG7BUIGHTS4GXO7F7XIB7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200mini QPSK
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JIW6K4FGNCXPG7BUIGHTS4GXO7F7XIB7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6288917162806079922=="

This is a multi-part message in MIME format.
--===============6288917162806079922==
Content-Type: multipart/alternative;
 boundary="------------CLDDtxRQ97kuS6TtATsawa3Y"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CLDDtxRQ97kuS6TtATsawa3Y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-03-21 16:29, Abby Mize wrote:
>
> OK yes I appreciate that, SDRs are indeed a new area for me. I=E2=80=99=
ll=20
> check this page out and keep researching. Looks like numpy has a lot=20
> of functions to use as well for conversions.
>
> *Abby Mize*
>
> Senior Embedded Systems Engineer
>
> Shape Description automatically generated with medium confidence
>
> +1 505 504 3611
>
> www.lunasonde.com <http://www.lunasonde.com>
>
Well, sure, but as you'll discover "conversion" doesn't really convey=20
what *modulation* actually means in signal processing.


> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Monday, March 21, 2022 1:15 PM
> *To:* Abby Mize <abby@lunasonde.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] B200mini QPSK
>
> On 2022-03-21 15:03, Abby Mize wrote:
>
>     OK so what will the API provide, just raw data input?=C2=A0 Sounds =
like
>     I will need to find other libraries to convert the raw data
>
>     Thank you,
>
>     *Abby Mize*
>
>     Senior Embedded Systems Engineer
>
>     Shape Description automatically generated with medium confidence
>
>     +1 505 504 3611
>
>     www.lunasonde.com <http://www.lunasonde.com>
>
> Sounds like you may want to start out by learning exactly what an SDR=20
> is, and how they related to DSP work.
>
> You should probably visit the basic tutorials page at gnuradio.org,=20
> even if that's not the path you go down, it has pointers
> =C2=A0 to a lot of basics.
>
> The UHD library really is just about interfacing to the hardware, and=20
> getting sample streams into and out-of it.
>

--------------CLDDtxRQ97kuS6TtATsawa3Y
Content-Type: multipart/related;
 boundary="------------0SznQC7UqZNbYihNI1Mqx5iv"

--------------0SznQC7UqZNbYihNI1Mqx5iv
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-21 16:29, Abby Mize wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN6PR03MB313742C54AC553D16633ADCAC8169@BN6PR03MB3137.namprd03=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}@font-face
	{font-family:"\@Malgun Gothic";}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">OK yes I appreciate that, SDRs are indeed =
a
          new area for me. I=E2=80=99ll check this page out and keep
          researching. Looks like numpy has a lot of functions to use as
          well for conversions.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal"><b>Abby Mize</b><o:p></o:p></p>
          <p class=3D"MsoNormal">Senior Embedded Systems Engineer<o:p></o=
:p></p>
          <p class=3D"MsoNormal"><img style=3D"width:1.3541in;height:.177=
in"
              id=3D"_x0000_i1026"
              src=3D"cid:part1.kdL3Ycpj.IXOqOglw@gmail.com" alt=3D"Shape
              Description automatically generated with medium
              confidence" class=3D"" width=3D"130" height=3D"17"><o:p></o=
:p></p>
          <p class=3D"MsoNormal">+1 505 504 3611<o:p></o:p></p>
          <p class=3D"MsoNormal"><a href=3D"http://www.lunasonde.com"
              moz-do-not-send=3D"true">www.lunasonde.com</a></p>
        </div>
      </div>
    </blockquote>
    Well, sure, but as you'll discover "conversion" doesn't really
    convey what *modulation* actually means in signal processing.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN6PR03MB313742C54AC553D16633ADCAC8169@BN6PR03MB3137.namprd03=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <div>
          <p class=3D"MsoNormal"><o:p></o:p></p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Monday, March 21, 2022 1:15 PM<br>
              <b>To:</b> Abby Mize <a class=3D"moz-txt-link-rfc2396E" hre=
f=3D"mailto:abby@lunasonde.com">&lt;abby@lunasonde.com&gt;</a><br>
              <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
              <b>Subject:</b> Re: [USRP-users] B200mini QPSK<o:p></o:p></=
p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2022-03-21 15:03, Abby Mize wrote:<o:=
p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">OK so what will the API provide, just ra=
w
            data input?=C2=A0 Sounds like I will need to find other libra=
ries
            to convert the raw data<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal"><b>Abby Mize</b><o:p></o:p></p>
            <p class=3D"MsoNormal">Senior Embedded Systems Engineer<o:p><=
/o:p></p>
            <p class=3D"MsoNormal"><img
                style=3D"width:1.3541in;height:.177in"
                id=3D"Picture_x0020_2"
                src=3D"cid:part1.kdL3Ycpj.IXOqOglw@gmail.com" alt=3D"Shap=
e
                Description automatically generated with medium
                confidence" class=3D"" width=3D"130" height=3D"17" border=
=3D"0"><o:p></o:p></p>
            <p class=3D"MsoNormal">+1 505 504 3611<o:p></o:p></p>
            <p class=3D"MsoNormal"><a href=3D"http://www.lunasonde.com"
                moz-do-not-send=3D"true">www.lunasonde.com</a><o:p></o:p>=
</p>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Sounds like
          you may want to start out by learning exactly what an SDR is,
          and how they related to DSP work.<br>
          <br>
          You should probably visit the basic tutorials page at
          gnuradio.org, even if that's not the path you go down, it has
          pointers<br>
          =C2=A0 to a lot of basics.<br>
          <br>
          The UHD library really is just about interfacing to the
          hardware, and getting sample streams into and out-of it.<o:p></=
o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------0SznQC7UqZNbYihNI1Mqx5iv
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Id: <part1.kdL3Ycpj.IXOqOglw@gmail.com>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAIIAAAARCAYAAAAR8XQQAAAAAXNSR0ICQMB9xQAAAAlwSFlz
AAAOxAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAS/
SURBVGje7ZkHSJZBGMctszJtaFG2CBq2bdqiHRVStgcNGlgUldkkQSps72VLjAZERRERNGnR
3pMGQZREQUZFRZGVac8D/xeu65bfFw36XviB3z3P3Xv3vP+7e+4MSk1NDQoQIBAEXwMXFFSD
aB0QQkAIi4k3xHWiTUAI/+6HLORDnapEESIYv8sTS4gvRO9/Xgj07CXOEkUdgjEEs6CLxl4d
9kka+3a8K9LwjmnERSLUcWaed/QtSCwlMolXxGNiNlHYUKctcYR4RnwjbhFRks9wIpuoJJWX
IC4TOyz94phs0dhaIp4PiacCl4ipRDlL281Q/4FUn4mXhcCFuUSYQzBnEHksCI29AexrNPab
sLMYSmp8NsAn3NKXKOIzfEc59D0NvgeIdHxg/t1Q4z8T9nvEXKK9GDzJl4O9VSqLxGrBbWw0
9Os+C0xj64b63H6GwF2UvyXGGNruAr8HUn0mVhYCO70nijkEczIaHqix14d9qcZ+HnZPDMEK
n1XEJ5sw6ZmDdr4Sd3jGG3xLwXeXYsZXVviPgP8sooBDXCYQx6WyCKw83njXaupeIy5obF11
QqenA/ESdt0K3Qn2mS5bw+8UwhWoOB1+ab4IgZdzBPmQ0KfuFiHw8n3aYYzhRBaxJx/5A8/+
4gohZGM270MfE3wUgm6rrYl43iZCDEKY97cJ4SqCw/v1Aviu9EEII1G3J68q6P81S98Xoc5J
3XYAv47wa2BpLxRjaKexRyCvOAvhHlaJwR8hwGe9rr+CEFZCrCLBf1oI37yPLMyU8fkUAvf5
oWI/jzXUCRG2kzzkDGGaBPSDQywKIG6rDULI8QQK4TzBu1v9QiH0k2OoEIKK+v4IYYpFCPUc
hJDjnRqwZHt5Q38XIWBvzIOI4nhLIMahbK/DGJoQ5+B/Sj4tcUCRhEY4bCF8l5BkEcJVoawu
8QLbWoyQaPojhIli/DRC4NVotESkP0JIQsO9NPbGsK+wCCFCKCuOYxnXa06kYPvQCeEAfHM1
Sq/nuK9vgv9Qqbwayodb6veCXyNXIaC8Fq84EEMFbFUX/RDCDfiUNQhhlmuO8M4xeI1U+7pg
H2RJbn4SAsprQ4x8lN1PvNYs21WxtezABxPpjHev18xe+fxfCf7bFP6HMdtLG/KD57yyGGKl
FAJsfYV85ZYuiRWEME5jT4B9s+p0IwhhjosQ+Jz8ke/OiaYCMXLj2BdPoPEZngr5o2Gv+oQA
lc6PEGBrigw4D3upSggZpllPzzGMJUrxUfgOYwDfDqIs2XA0K4O4ZELcIcKlVA9MHu5jFV+E
APtgYRU7aBHCfFzW1UGcOKHdLSz74ZbjYzr+PxINaovfyHPO1CyxX1S3jRjgUWF5fo6lzru4
aG4IziP4RVoy9s/y4OipCNsZQ/utVLMcJ4tTwiVMFv7eqTp2CUfC4/B7hXF65/bL8k2ipj77
PjL4TIePbmuINyR7uUh4QwztxxnqL5SFkIRMeQmuYD1STHfyfGziXIBYxzeJRB+H28BE7oDp
SpieYcjuCyuSvGU8IyzvSMYpQl7NCqGPHLy1cm5gaK8hjonrEJcWjvVCMdZEh/6O1diicezl
9y7H+BfgxrCCQx+qS/WXC+10/e//6RTgR74Dyf5pfsk8/dQAAAAASUVORK5CYII=

--------------0SznQC7UqZNbYihNI1Mqx5iv--

--------------CLDDtxRQ97kuS6TtATsawa3Y--

--===============6288917162806079922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6288917162806079922==--
