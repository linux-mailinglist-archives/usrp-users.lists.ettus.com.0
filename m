Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5CC316A1E
	for <lists+usrp-users@lfdr.de>; Wed, 10 Feb 2021 16:27:45 +0100 (CET)
Received: from [::1] (port=46399 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9rP6-0005NL-9Q; Wed, 10 Feb 2021 10:27:44 -0500
Received: from mail-qv1-f47.google.com ([209.85.219.47]:46284)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l9rP2-0005GY-QB
 for USRP-users@lists.ettus.com; Wed, 10 Feb 2021 10:27:40 -0500
Received: by mail-qv1-f47.google.com with SMTP id a1so971400qvd.13
 for <USRP-users@lists.ettus.com>; Wed, 10 Feb 2021 07:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=EXLasc7XjmT8phvXKCuOcsqOYsENMWsh+1CFLaMY+B4=;
 b=sOj5OepXT+JE4YS3l1zTwLICAoftvvI910cog4UbLmTkUNXsjoeI62lrhAk5k6HQrc
 FM/0sgdluddm2bRUxjtfp7i3Vt/m4/jYXroFVPVOnZwSm2P/XTN/hyaGuENp+J/SAQcB
 W2X8eGX3D7rExmwj7BTB7eIDWcj+oeT6cTUk9E4Xn2vL6JobayRjG0/+X8fYwKGPN6DU
 wMs36qPfUi6Fe1VYTEjzXqmY90JohcD7GhQ0bge2TG9ADDvYO/FspJsGytwUyMV0t80I
 cU1IDfuvvg0zFpa5Z/608bCOJBpxgz795lnKE3pkW5KktUsgKGocinJ05yToLJEgbb+d
 ShYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=EXLasc7XjmT8phvXKCuOcsqOYsENMWsh+1CFLaMY+B4=;
 b=qIPoRUiO6E/jdsedDk9LVxcJDgpIvBFYphL9FbOddVbI7rlwMVOaNq21tZ32iNtiue
 ubLW+0hKKOxKx2xUwXHQHoJLTDYrW4g+OHd25wxrTJy7Bs9BzTy/JCvfAY/28jyMpzPD
 O5Ovt2DRneH2YI6fX+V4hYJ/UdXaFaV/WCs8xCa4tSJ70bmCQ0RQ3rQdBQgTZ+OyeSZM
 KlrTUAUBHCF+RNhR+Mi9oDejUframL+O24qkw8hftBUnebqKJlXw70WvrMSHPEK+GjiS
 genZ62eriUxotIwUI0UHe8oImNFCE+n9Dq1mJb7Pyik7e4XdHROHSwuGyQimj7PDUAoA
 bcsg==
X-Gm-Message-State: AOAM530mqN6irs/MlXB6fiiG6PBAOVZgZ+Peo9TR0LaxS/hFP3dKsl2g
 wvi71AFw5jZIJTsEeKVrvtPxzFVHfV8=
X-Google-Smtp-Source: ABdhPJybSpo3JVg79rDQNbde2WorqEtQIvGA7JINFK6vTl0i+7+2hrHYUg4ibztNyuqzoYa0sW7AgQ==
X-Received: by 2002:a0c:eb49:: with SMTP id c9mr3247854qvq.37.1612970820008;
 Wed, 10 Feb 2021 07:27:00 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id u126sm1623930qkc.107.2021.02.10.07.26.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Feb 2021 07:26:59 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 10 Feb 2021 10:26:58 -0500
Message-Id: <0CBAEE15-9F28-4753-B4C1-5BBFA1D44DBF@gmail.com>
References: <CAB__hTRL=N1ZiAnO4TH=tH_fd=YuY5dtn+cvV+NXzwXuyDSz0A@mail.gmail.com>
In-Reply-To: <CAB__hTRL=N1ZiAnO4TH=tH_fd=YuY5dtn+cvV+NXzwXuyDSz0A@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] Ettus USRP B200 mini - FPGA compatibility number
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============4773875343676937314=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============4773875343676937314==
Content-Type: multipart/alternative; boundary=Apple-Mail-927B9647-EF31-443C-A6B7-54FED12E94C1
Content-Transfer-Encoding: 7bit


--Apple-Mail-927B9647-EF31-443C-A6B7-54FED12E94C1
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

To amplify on a point Rob made. You have to power cycle the B2xx to load a n=
ew image into it. =20


Sent from my iPhone

> On Feb 10, 2021, at 9:53 AM, Rob Kossler via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> When you run uhd_images_downloader, which version of UHD is shown in the c=
onsole?  I can see in the console pictures below that UHD version 3.010.003 i=
s running (which is pretty old).  My guess is that you have multiple copies o=
f UHD on your system.
>=20
> The way it works is the following: when you run uhd_images_downloader, the=
 script automatically downloads the FPGA image that is associated with that s=
pecific version of UHD and installs it in <prefix>/share/uhd/images/.  Later=
, when you run any application that uses UHD and the B200mini, UHD will tran=
sfer that image (from that same folder) over USB to the device to load the FP=
GA (at least the first time you run UHD after plugging the device).
> Rob
>=20
>> On Wed, Feb 10, 2021 at 4:54 AM Elise Breivik Smebye via USRP-users <usrp=
-users@lists.ettus.com> wrote:
>> Hi, I am new to UHD, USRP and FPGA.
>> I am trying to use a Ettus USRP B200 mini to monitor the network traffic b=
etween two android phones with GNU radio with this guide https://github.com/=
bastibl/gr-ieee802-11.
>> When running the example file "wifi_tx_grc" I get a FPGA compatibility nu=
mber error.
>> =20
>>=20
>> GNU Radio test
>> =20
>> I have also tried to follow this guide https://github.com/srsLTE/srsLTE
>> and get the same error. I have run "uhd_images_donwloader" and get that a=
ll images are up to.
>> =20
>>=20
>> =20
>> =20
>> =20
>> =20
>> =20
>> =20
>> =20
>> =20
>> =20
>> =20
>> =20
>> =20
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>> Hope anyone can help.
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-927B9647-EF31-443C-A6B7-54FED12E94C1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">To amplify on a point Rob made. You have to=
 power cycle the B2xx to load a new image into it. &nbsp;<div><br><div><br><=
div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote ty=
pe=3D"cite">On Feb 10, 2021, at 9:53 AM, Rob Kossler via USRP-users &lt;usrp=
-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=
=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div dir=3D"ltr">When y=
ou run uhd_images_downloader, which version of UHD is shown in the console?&=
nbsp; I can see in the console pictures below that UHD version 3.010.003 is r=
unning (which is pretty old).&nbsp; My guess is that you have multiple copie=
s of UHD on your system.</div><div dir=3D"ltr"><br></div><div>The way it wor=
ks is the following: when you run uhd_images_downloader, the script automati=
cally downloads the FPGA image that is associated with that specific version=
 of UHD and installs it in &lt;prefix&gt;/share/uhd/images/.&nbsp; Later, wh=
en you run any application that uses UHD and the B200mini, UHD will transfer=
 that image (from that same folder) over USB to the device to&nbsp;load the&=
nbsp;FPGA (at least the first time you run UHD after plugging the device).</=
div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Feb 10, 2021 at 4:54 AM Elise Breivik Smebye via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;=
color:rgb(0,0,0)">
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
Hi, I am new to UHD, USRP and FPGA.</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
I am trying to use a Ettus USRP B200 mini to monitor the network traffic bet=
ween two android phones with GNU radio with this guide<span>&nbsp;</span><a h=
ref=3D"https://github.com/bastibl/gr-ieee802-11" rel=3D"nofollow noopener no=
referrer" style=3D"box-sizing:border-box;color:rgb(4,65,35);text-decoration:=
underline" target=3D"_blank">https://github.com/bastibl/gr-ieee802-11.</a></=
p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
When running the example file "wifi_tx_grc" I get a FPGA compatibility numbe=
r error.</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
<span style=3D"box-sizing:border-box;display:inline-block;max-width:100%;wid=
th:958px"><span style=3D"box-sizing:border-box;display:inline-block"><span s=
tyle=3D"box-sizing:border-box"></span><img title=3D"Screenshot from 2021-02-=
10 09-55-57.png" alt=3D"Screenshot from 2021-02-10 09-55-57.png" style=3D"bo=
x-sizing: border-box; vertical-align: middle; display: block; max-width: 100=
%; height: auto;" src=3D"https://ni.i.lithium.com/t5/image/serverpage/image-=
id/281803i304FC834DE46FE09/image-size/large?v=3D1.0&amp;px=3D999" data-uniqu=
e-identifier=3D""></span><span style=3D"box-sizing:border-box;color:rgb(102,=
102,102);display:block;font-size:13px;font-style:italic;height:auto;margin:1=
0px 0px 20px">GNU
 Radio test</span></span></p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
I have also tried to follow this guide<span>&nbsp;</span><a href=3D"https://=
github.com/srsLTE/srsLTE" rel=3D"nofollow noopener noreferrer" style=3D"box-=
sizing:border-box;color:rgb(4,65,35);text-decoration:underline" target=3D"_b=
lank">https://github.com/srsLTE/srsLTE</a></p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
and get the same error. I have run "uhd_images_donwloader" and get that all i=
mages are up to.</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
<span style=3D"box-sizing:border-box;display:inline-block;max-width:100%;flo=
at:left;margin-right:10px;width:999px"><span style=3D"box-sizing:border-box;=
display:inline-block"><span style=3D"box-sizing:border-box"></span><img titl=
e=3D"Screenshot from 2021-02-10 09-29-25.png" alt=3D"Screenshot from 2021-02=
-10 09-29-25.png" style=3D"box-sizing: border-box; vertical-align: middle; d=
isplay: block; max-width: 100%; height: auto;" src=3D"https://ni.i.lithium.c=
om/t5/image/serverpage/image-id/281797iEAD9FCD6816778AF/image-size/large?v=3D=
1.0&amp;px=3D999" data-unique-identifier=3D""></span></span></p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,5=
1,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-colo=
r:rgb(255,255,255)">
Hope anyone can help.</p>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></div></body></html>=

--Apple-Mail-927B9647-EF31-443C-A6B7-54FED12E94C1--


--===============4773875343676937314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4773875343676937314==--

