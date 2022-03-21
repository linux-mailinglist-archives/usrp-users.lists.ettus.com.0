Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC594E3192
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 21:16:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CEFA38515D
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 16:16:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D+zMQ7eO";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 8D39A384A2F
	for <USRP-users@lists.ettus.com>; Mon, 21 Mar 2022 16:15:06 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id v15so12553410qkg.8
        for <USRP-users@lists.ettus.com>; Mon, 21 Mar 2022 13:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=qnm1cYOgrTDBylDR40b8B9UclafN/NTaB5TZQchl81I=;
        b=D+zMQ7eOeBjYWuCvif9jUkOX2ZXEJS209Jv3KsNpG3glQI0HYzSCEpJ8G9tkmGSfQz
         K7FE/NaQ5q5xJFjaQW+KXz/YH6VQqJtik2U2Pindr4IE+jExikVN7R+yXZAsXlb2V4ZN
         DI3VFMkNtbKlpreM5sYmv029WN8n3FZU7XtximVJQxa9ZNwW9k8T8wT8E266pb6xG/aI
         Kj6yT9vjclEIOzIGXEmZ5MVvyaYLReoTj56vCgut5oBb97j8EeEm1GkZxroqBtvcNepZ
         5zBr2TEz/vGmnA0dT28DS3+25ZbWyFHGzYkRoZvJ1RbiqrV20lTtZz6lplhf7eEIuUXk
         L5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=qnm1cYOgrTDBylDR40b8B9UclafN/NTaB5TZQchl81I=;
        b=azq0GtbCphX9kEtzgT82E/OB6mvdKVXUxtqfR8GuuHQtKBehWCkYlOUO0pVwUyqQfO
         kJC73CcxJ8sI6ded0KvwwmYoid1VGFGlZiuAs2lHSFjQegCzY6mpvfvCPpV1gYpTMyMR
         dB+8skKOz8totsDzbpKMvs5arOZnbk9vHZil2cdSDzNlgz3vNPDYux025OaQi1d6GAp0
         aQzlIho2y9UOhNJJxY9VmnPaDK1PACCACuyAFFGe/d+uy3ptRiWAmsEbV/6VgyCaEk96
         aQs/p47BSBH+Y69d7EOJB2mPqpqSR0qc6V3eBB9+PVWbIidfvqtA5LW1ty6Z1xDe70o7
         eIbA==
X-Gm-Message-State: AOAM531yo9n2KDNVhAfvIsxwf4wDTdOkdc//jHfaflV8pKFXZ9ccqLbx
	swHTi0ZFuvay6+cSRk1O3mjlzyuhr4Y=
X-Google-Smtp-Source: ABdhPJzqxk2+z/7M16TyBgx+5us1+tPEOp9+SHGDqZ0cz2ZTmAdyeeBFt6piSbunE4AWQB2n1sYitw==
X-Received: by 2002:a05:620a:3190:b0:67d:714a:10e4 with SMTP id bi16-20020a05620a319000b0067d714a10e4mr14136757qkb.33.1647893705768;
        Mon, 21 Mar 2022 13:15:05 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id m4-20020ac85b04000000b002e1dcaed228sm12078945qtw.7.2022.03.21.13.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 13:15:05 -0700 (PDT)
Message-ID: <2a628637-4c9e-cb2c-9741-fe36ca6ca98e@gmail.com>
Date: Mon, 21 Mar 2022 16:15:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Abby Mize <abby@lunasonde.com>
References: <BN6PR03MB3137F5CCAACE6824D0756891C8169@BN6PR03MB3137.namprd03.prod.outlook.com>
 <E319DE84-E73B-49B3-9E70-A4EB2DE4056E@gmail.com>
 <BN6PR03MB31377AFA80B5870000923E19C8169@BN6PR03MB3137.namprd03.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN6PR03MB31377AFA80B5870000923E19C8169@BN6PR03MB3137.namprd03.prod.outlook.com>
Message-ID-Hash: GJATNDHMHC67T6ANFMPBIEXMKRWYLRZV
X-Message-ID-Hash: GJATNDHMHC67T6ANFMPBIEXMKRWYLRZV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200mini QPSK
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GJATNDHMHC67T6ANFMPBIEXMKRWYLRZV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0959365908871911950=="

This is a multi-part message in MIME format.
--===============0959365908871911950==
Content-Type: multipart/alternative;
 boundary="------------QV23WCOj0bvVIDUENehzQYqT"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QV23WCOj0bvVIDUENehzQYqT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-03-21 15:03, Abby Mize wrote:
>
> OK so what will the API provide, just raw data input?=C2=A0 Sounds like=
 I=20
> will need to find other libraries to convert the raw data
>
> Thank you,
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
>
Sounds like you may want to start out by learning exactly what an SDR=20
is, and how they related to DSP work.

You should probably visit the basic tutorials page at gnuradio.org, even=20
if that's not the path you go down, it has pointers
 =C2=A0 to a lot of basics.

The UHD library really is just about interfacing to the hardware, and=20
getting sample streams into and out-of it.


--------------QV23WCOj0bvVIDUENehzQYqT
Content-Type: multipart/related;
 boundary="------------uRExcXwY6rDZ9zTF1d0Sjg76"

--------------uRExcXwY6rDZ9zTF1d0Sjg76
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-21 15:03, Abby Mize wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN6PR03MB31377AFA80B5870000923E19C8169@BN6PR03MB3137.namprd03=
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
	text-decoration:underline;}span.EmailStyle20
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
        <p class=3D"MsoNormal">OK so what will the API provide, just raw
          data input?=C2=A0 Sounds like I will need to find other librari=
es
          to convert the raw data<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal"><b>Abby Mize</b><o:p></o:p></p>
          <p class=3D"MsoNormal">Senior Embedded Systems Engineer<o:p></o=
:p></p>
          <p class=3D"MsoNormal"><img style=3D"width:1.3541in;height:.177=
in"
              id=3D"Picture_x0020_2"
              src=3D"cid:part1.NCx9oaBw.c20C22HH@gmail.com" alt=3D"Shape
              Description automatically generated with medium
              confidence" class=3D"" width=3D"130" height=3D"17"><o:p></o=
:p></p>
          <p class=3D"MsoNormal">+1 505 504 3611<o:p></o:p></p>
          <p class=3D"MsoNormal"><a href=3D"http://www.lunasonde.com"
              moz-do-not-send=3D"true">www.lunasonde.com</a><o:p></o:p></=
p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <br>
      </div>
    </blockquote>
    Sounds like you may want to start out by learning exactly what an
    SDR is, and how they related to DSP work.<br>
    <br>
    You should probably visit the basic tutorials page at gnuradio.org,
    even if that's not the path you go down, it has pointers<br>
    =C2=A0 to a lot of basics.<br>
    <br>
    The UHD library really is just about interfacing to the hardware,
    and getting sample streams into and out-of it.<br>
    <br>
    <br>
  </body>
</html>
--------------uRExcXwY6rDZ9zTF1d0Sjg76
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Id: <part1.NCx9oaBw.c20C22HH@gmail.com>
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

--------------uRExcXwY6rDZ9zTF1d0Sjg76--

--------------QV23WCOj0bvVIDUENehzQYqT--

--===============0959365908871911950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0959365908871911950==--
