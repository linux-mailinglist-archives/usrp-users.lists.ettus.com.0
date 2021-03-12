Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTP id 40581339126
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 16:22:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E47D7383C15
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 10:22:33 -0500 (EST)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 8B0EC383C15
	for <USRP-users@lists.ettus.com>; Fri, 12 Mar 2021 10:21:33 -0500 (EST)
Received: by mail-qk1-f169.google.com with SMTP id b130so24553227qkc.10
        for <USRP-users@lists.ettus.com>; Fri, 12 Mar 2021 07:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=/xUXds69YfKdCI8Yp8aaGWia+Bw5zINVDfQeRH4py9c=;
        b=nyMTJtaov7J2VeCnYixkwbWSvwa8zrTpqoAqkhpZAfOOFZ41QjDY5u/rdzs9z5Nk1b
         +CRydNBD+KPFJDUM11D2O6SDl8PT/0r5iXpNdfkhYRK8DnhC1M978AD1DSjfDXBcvDrm
         YXHss5YP/hSyr9wQwnO7in0ia/y9IL1kljkZUZ/BSLkilq3Vxs6rgFP2ajDYt7A0tobf
         Eawp4A6vHOJEYlKmzGQI+A2nZjnnkLRAjk9W5znrHY0j9JdWByUMP/qDqWY5mqHCT1th
         +b1cFzyH1zrKw+8gsPPj14Ijk/ROlYRdN6uNg/o4iSRiDeZvO6m4Xrxp/ttnw6XVmzGm
         7Q1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=/xUXds69YfKdCI8Yp8aaGWia+Bw5zINVDfQeRH4py9c=;
        b=qPJOzXEJDStf6EkhK+4qkSn8s/uU5fdajFyyIYPBEUnvigGuviHBMT7WLT11mrYdYp
         vxgfXFawClXaUrRMrVa+rwS50iocLRdF25UDmMDTSH6YIJxat124/2ajdHdQdgLIBwHn
         npYQlYCv6NkSXD9URU9O7mb8nO3ar+mwk7PranIOPBwL8Y4s/9/2Y5SMUorohPXSkvzE
         dfo9zTiD3QlZFkpObIhvtsVY7tWmfGEXxUqjAb723mu7fVCX9K7JPW8DPLqg4Fud20ud
         EeAwzkKgn8d6PoTY9Q6nhYhFdS88dRqD1jJWdzU5x/HVHPDXXCZEBJlQqKIxL1wFtTSW
         MCiw==
X-Gm-Message-State: AOAM531nEMj8zp9m0Ck7DnSuV83H92RcS0X2bSOVEGd5J/T6Y9KJ5n2u
	H5UvRfvlYEmQ/jPl0VzoVko=
X-Google-Smtp-Source: ABdhPJz1j8Q44TXl8O6mD1OK0ol4oNUHsPn2K0yyM5RiSi6pb8YpuvZeLS0D20BafMyfX2VKP6STFQ==
X-Received: by 2002:a37:9ed0:: with SMTP id h199mr13224650qke.8.1615562493129;
        Fri, 12 Mar 2021 07:21:33 -0800 (PST)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id d128sm4572470qkb.44.2021.03.12.07.21.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 07:21:32 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 12 Mar 2021 10:21:32 -0500
Message-Id: <528B62B7-C6D7-4B47-B3BC-EED2D45B448F@gmail.com>
References: <CAB__hTTE0CpXfpKMYgoScWTfZUvgFPHZriEU1FzirHMeYGQ6fQ@mail.gmail.com>
In-Reply-To: <CAB__hTTE0CpXfpKMYgoScWTfZUvgFPHZriEU1FzirHMeYGQ6fQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (18D52)
Message-ID-Hash: DO3MTBIHELPYWK6KOXZTKWRVL3UJKJZX
X-Message-ID-Hash: DO3MTBIHELPYWK6KOXZTKWRVL3UJKJZX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 with dual TwinRX set up
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DO3MTBIHELPYWK6KOXZTKWRVL3UJKJZX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5898234940128310512=="


--===============5898234940128310512==
Content-Type: multipart/alternative; boundary=Apple-Mail-76122106-5218-4A55-B4FA-EBF96BCDF396
Content-Transfer-Encoding: 7bit


--Apple-Mail-76122106-5218-4A55-B4FA-EBF96BCDF396
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Also try running at a lower sample rate at first. Just to see that you have t=
he logic correct.=20

Sent from my iPhone

> On Mar 12, 2021, at 9:18 AM, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> Is there any chance that your code is attempting to set the master clock r=
ate?  If so, perhaps see what happens if you don't set it in order to let it=
 be set automatically.
>=20
>> On Fri, Mar 12, 2021 at 8:55 AM Oliver Towlson <oliver.towlson@gmvnsl.com=
> wrote:
>> Hi everyone
>>=20
>> =20
>>=20
>> Thanks so much for your quick responses. Seems like the thing we were mis=
sing was that subdev spec =E2=80=93 once that was set it was straightforward=
 to generate the code.
>>=20
>> =20
>>=20
>> We tried running it and got the following:
>>=20
>> =20
>>=20
>> [INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.1=
5.0.0-2build5
>>=20
>> [INFO] [X300] X300 initialization sequence...
>>=20
>> [INFO] [X300] Maximum frame size: 8000 bytes.
>>=20
>> [INFO] [X300] Maximum frame size: 8000 bytes.
>>=20
>> [INFO] [X300] Radio 1x clock: 200 MHz
>>=20
>> [INFO] [X300] Radio 1x clock: 200 MHz
>>=20
>> [INFO] [1/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000000=
00)
>>=20
>> [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)
>>=20
>> [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1301 MB/s)
>>=20
>> [INFO] [1/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001=
)
>>=20
>> [INFO] [1/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001=
)
>>=20
>> [INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>>=20
>> [INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>>=20
>> [INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
>>=20
>> [INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>>=20
>> [WARNING] [X300] Cannot update master clock rate! X300 Series does not al=
low changing the clock rate during runtime.
>>=20
>> terminate called after throwing an instance of 'uhd::io_error'
>>=20
>>   what():  EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no respo=
nse packet - AssertionError: bool(buff)
>>=20
>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [w=
ith uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D long=
 unsigned int]
>>=20
>>   at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:151
>>=20
>> =20
>>=20
>> Aborted (core dumped)
>>=20
>> =20
>>=20
>> Googling didn=E2=80=99t result in any answers beyond resetting the whole d=
evice. But it does seem like a common error. As you say, the 4xRF_in set-up i=
s fairly standard so I=E2=80=99m not sure what is causing the issue. The exa=
mple rx_samples_to_file script runs fine (although it doesn=E2=80=99t seem t=
o write anything, but it does seems to stream data fine)
>>=20
>> =20
>>=20
>> Let me know if you need any more information.
>>=20
>> =20
>>=20
>> Thanks very much
>>=20
>> =20
>>=20
>> Oliver
>>=20
>>=20
>> P Please consider the environment before printing this e-mail.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-76122106-5218-4A55-B4FA-EBF96BCDF396
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Also try running at a lower sample rate at f=
irst. Just to see that you have the logic correct.&nbsp;<div><br><div dir=3D=
"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite=
">On Mar 12, 2021, at 9:18 AM, Rob Kossler &lt;rkossler@nd.edu&gt; wrote:<br=
><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"ltr">Is there any chance that your code is attempting to set the=
 master clock rate?&nbsp; If so, perhaps see what happens if you don't set i=
t in order to let it be set automatically.</div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 12, 2021 at 8:55 AM Oli=
ver Towlson &lt;<a href=3D"mailto:oliver.towlson@gmvnsl.com">oliver.towlson@=
gmvnsl.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_2344106125915786502WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif">Hi everyone
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif">Thanks so much for your quick responses. Seems like the thing we we=
re missing was that subdev spec =E2=80=93 once that was set it was straightf=
orward to generate the code.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif">We tried running it and got the following:<u></u><u></u></span></p>=

<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100=
; UHD_3.15.0.0-2build5<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [X300] X300 initialization sequence...<u></u><u></u></spa=
n></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [X300] Maximum frame size: 8000 bytes.<u></u><u></u></spa=
n></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [X300] Maximum frame size: 8000 bytes.<u></u><u></u></spa=
n></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [X300] Radio 1x clock: 200 MHz<u></u><u></u></span></i></=
p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [X300] Radio 1x clock: 200 MHz<u></u><u></u></span></i></=
p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [1/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D=
00000000000)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)<u></u><=
u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1301 MB/s)<u></u><=
u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [1/Radio_0] Initializing block control (NOC ID: 0x12AD100=
000000001)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [1/Radio_1] Initializing block control (NOC ID: 0x12AD100=
000000001)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC000000=
0000000)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC000000=
0000000)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C000000=
0000000)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C000000=
0000000)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">[WARNING] [X300] Cannot update master clock rate! X300 Series do=
es not allow changing the clock rate during runtime.<u></u><u></u></span></i=
></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">terminate called after throwing an instance of 'uhd::io_error'<u=
></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">&nbsp; what():&nbsp; EnvironmentError: IOError: Block ctrl (CE_0=
0_Port_30) no response packet - AssertionError: bool(buff)<u></u><u></u></sp=
an></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">&nbsp; in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_=
ack(bool, double) [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BI=
G; uint64_t =3D long unsigned int]<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">&nbsp; at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_ifa=
ce.cpp:151<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif"><u></u>&nbsp;<u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif">Aborted (core dumped)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif">Googling didn=E2=80=99t result in any answers beyond resetting the w=
hole device. But it does seem like a common error. As you say, the 4xRF_in s=
et-up is fairly standard so I=E2=80=99m not
 sure what is causing the issue. The example rx_samples_to_file script runs f=
ine (although it doesn=E2=80=99t seem to write anything, but it does seems t=
o stream data fine)</span><span style=3D"font-size:10pt;font-family:Verdana,=
sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif">Let me know if you need any more information.<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif">Thanks very much<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,san=
s-serif">Oliver</span><span style=3D"font-size:10pt;font-family:Verdana,sans=
-serif"><u></u><u></u></span></p>
</div>
<span><br>
</span><span style=3D"font-size:18pt;line-height:125%;font-family:Webdings;c=
olor:green">P<span></span>
<span style=3D"font-size:7pt;line-height:125%;font-family:Arial,sans-serif;c=
olor:green">
Please consider the environment before printing this e-mail.</span></span><s=
pan></span>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-76122106-5218-4A55-B4FA-EBF96BCDF396--

--===============5898234940128310512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5898234940128310512==--
