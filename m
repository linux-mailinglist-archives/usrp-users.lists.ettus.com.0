Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 495169D88B4
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 16:05:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAA53384FFF
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 10:05:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732547103; bh=dr/9zL11K7HAK0/uFGPKb0UdFxy677kw/aiCslEJvr4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Wc3iHFqtgxCjz0bgSm7e8LBGQ1eX1QS5aLANMd+FMoKkEuPbcrWwx95ingkv+hrJf
	 fcu62V2fcDIniewnMd81IUeBGLOS3hbNnPTmX0888KBDO5sKN7d5p26dwkQz2tMjxy
	 qEmSPM1L/hABY015cFiknERUq4DgVnB273gaCJc8dtuK7K6qSY9nwg/cQHanD3GBLl
	 RkQPonb8DbnbU0EOv3/RaTxWDyV8P07QTMhVFtI/c9rB5YBjXbhbY8qZmVoEwbVZsB
	 PTTLuauWdpnAjVB4qpzhB+DyLPbUswA8q/l9idHjhsdmuor18HMnxbENxgVtrPkEYO
	 KKKEXuAEm3Rgg==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D8693860F5
	for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 10:04:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NsK4UsFo";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-466966d8dbaso5400451cf.3
        for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 07:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732547079; x=1733151879; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FQK2INeZa2fvVn+ntRaZrHL7I0O4gbsUxtdjaQmiXo4=;
        b=NsK4UsFo0jB/0Bw52xD34fV2Z9hBzV40+mNjZ5vx2V/rq2aRa3V6RZL7uboKa++hMC
         vK/3wh/kqQReT8WY1THX3HJNSOUvwNw8cgWn62+17APq1j29WyvrQv8uqSMHfVts9RFq
         kfgSUVbErb/Ky/j4I9gy/aJorVZ3yve68UAUQRWvWi10g+ae17/yk01CZ/nqRP9f35aE
         uOak5dtcMf0UZEg+hxrHXoQ+xJhHbVdSR3V+JI9UBwDeNOb+JTCKBWLBfFXbJAfPGJPp
         lvzfo8HiCkg9J1QsGgQdyV2n6b619mm79V+EC3/E7R1LUDhPaZ/I0bfmaFEh/1EDoIwZ
         5pvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732547079; x=1733151879;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FQK2INeZa2fvVn+ntRaZrHL7I0O4gbsUxtdjaQmiXo4=;
        b=Eh14ruUHz+eIQpSgbj2npOw8QR+aq7/3FpcbE79efyQT2u41ig3gwW1NYBClZCwmRh
         1mwQRvsrZNnnFy6i3vyA8scjNEGJOINcQ2jCQZ9//WqAoZ39DG/KB1cCik/8uYc5+38Z
         8wNxtTdOTOR9/xer38XxYKSV8q4jw5Oh+3HCrrXRSLmCBiirl7C48dr+4s8aMIhhi6/I
         HDQ6/K/blj9I9wuWUbc+IuKz4BsBs1OGVAkrERz12bnoeOy03sXNhWQoNrmOdlEJ+43m
         UWDugKHT2Rw39emY0w20D0L9/uCebZl3gRpXJWlutqdUb+TSUwI04jFgZJsBz4Q4ue6R
         GKhQ==
X-Gm-Message-State: AOJu0Yyp9CiVpy3B+TOxiBMi2ompts3mXgxyj6fp/nVmMP1Q+C6lhbEF
	s3LMG7Hcej5t+SZbtvo9nNP2nv8OtWmtOPHdi4LHnWGFomvwbGCUK7vL0g==
X-Gm-Gg: ASbGncvsvZcp31Z0CFN1N0p67pmA+Z7OWKQSz/B7Ozw25hos3pq5ImWp4yMUZ4zFJt3
	wIXUZF+eGvfji4cbmRRrhdz0JUenT59QaJNM8zOJiokP2qpuDNCQz3gfhoJYHV31DgHS270mT6+
	LYaBuz1vDZaIb6RRRG8gYCxkQk5raJaafKvyqIDoL0hDgahKGp5GpOb/6RFJpe+7X9x0cRBghEY
	K0vhse2gYx5tH9bcy/fi+TqEPdkLwpffgon4PKfo7kWXsRVMuPMq2ftYXqr
X-Google-Smtp-Source: AGHT+IEsqjI5Rvbx5WkoWm12Jp+NAMJT3Mn2/AV5hhVl2D/kxvSS0Yxceqf9JCDU3+A0J34z2bjDzg==
X-Received: by 2002:ac8:5848:0:b0:466:a254:733b with SMTP id d75a77b69052e-466a25477d9mr1988811cf.13.1732547079289;
        Mon, 25 Nov 2024 07:04:39 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4669fa625b9sm2801161cf.7.2024.11.25.07.04.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 07:04:38 -0800 (PST)
Message-ID: <a292ca9d-7507-44ab-a81d-656b492be8f7@gmail.com>
Date: Mon, 25 Nov 2024 10:04:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <848678402.19165407.1732543946189.JavaMail.zimbra@tubitak.gov.tr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <848678402.19165407.1732543946189.JavaMail.zimbra@tubitak.gov.tr>
Message-ID-Hash: KEZZCDKUQFT3DQSM625R4H57YHTXQIWZ
X-Message-ID-Hash: KEZZCDKUQFT3DQSM625R4H57YHTXQIWZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Module Not Found Error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KEZZCDKUQFT3DQSM625R4H57YHTXQIWZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4939359396495465028=="

This is a multi-part message in MIME format.
--===============4939359396495465028==
Content-Type: multipart/alternative;
 boundary="------------xgWwhfSlK2fsZsdInj2J4Pds"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xgWwhfSlK2fsZsdInj2J4Pds
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/11/2024 09:12, Hamd=C3=BCsena B=C4=B0LG=C4=B0 (B=C4=B0LGEM) via USR=
P-users wrote:
>
> Hello dear usrp users,
>
> I want to write code using the UHD Python APIs, but I get an error=20
> when I try to run import uhd. UHD works properly in GNU Radio, but=20
> when I try to work with Python 3.8 from the terminal or in VSCode, I=20
> encounter the following error. How can I resolve this issue?
>
> *export PYTHONPATH=3D/usr/local/lib/python3/dist-packages/:$PYTHONPATH*
>
> python3.8
> Python 3.8.10
> [GCC 9.4.0] on linux
> Type "help", "copyright", "credits" or "license" for more information.
> >>> import uhd
> Traceback (most recent call last):
> =C2=A0 File "<stdin>", line 1, in <module>
> ModuleNotFoundError: No module named 'uhd'
>
>
>
> The versions on the device are:
> =C2=A0gnuradio-config-info --v
> v3.8.5.0-6-g57bd109d
> -----------------------------------
>
> uhd_config_info --version
>
> UHD 4.7.0.0-0-ga5ed1872
>
> ------------------------------------------
>
>
> uhd_find_devices
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
> UHD_4.7.0.0-0-ga5ed1872
>
> --------------------------------------------------
>
> -- UHD Device 0
>
> --------------------------------------------------
>
> Device Address:
>
> serial: 33CB10C
>
> addr:192.168.10.2 <callto:192.168.10.2>
>
> claimed: False
>
> fpga: 1G
>
> mgmt_addr:192.168.10.2 <callto:192.168.10.2>
>
> name: ni-e320-33CB10C
>
> product: e320
>
> type: e3xx
>
> ----------------------------------------
>
>
>
> python3 --version
>
> Python 3.8.10
>
> ----------------------------------------
>
> g++ --version
>
> g++ (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0 <callto:20.04.2) 9.4.0>
>
>
How did you install UHD?=C2=A0=C2=A0 The Python API for UHD is different =
from the=20
interface that Gnu Radio uses for UHD -- they're
 =C2=A0 different things.

When you build UHD, you have to configure it to build the direct Python=20
support for UHD.=C2=A0 It's likely that didn't
 =C2=A0 happen when it was built.


--------------xgWwhfSlK2fsZsdInj2J4Pds
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/11/2024 09:12, Hamd=C3=BCsena B=C4=
=B0LG=C4=B0
      (B=C4=B0LGEM) via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:848678402.19165407.1732543946189.JavaMail.zimbra@tubitak.gov.=
tr">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div
style=3D"font-family: arial, helvetica, sans-serif; font-size: 12pt; colo=
r: #000000">
        <div>
          <div>=C2=A0</div>
          <div><br data-mce-bogus=3D"1">
          </div>
          <div><span
style=3D"color: #000000; font-family: aptos, aptos_embeddedfont, aptos_ms=
fontservice, calibri, helvetica, sans-serif; font-size: 16px; font-style:=
 normal; font-variant-ligatures: normal; font-variant-caps: normal; font-=
weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; white-space: normal; background-color: #fdfdfd; t=
ext-decoration-thickness: initial; text-decoration-style: initial; text-d=
ecoration-color: initial; display: inline !important; float: none;"
data-mce-style=3D"color: #000000; font-family: aptos, aptos_embeddedfont,=
 aptos_msfontservice, calibri, helvetica, sans-serif; font-size: 16px; fo=
nt-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px;=
 -webkit-text-stroke-width: 0px; white-space: normal; background-color: #=
fdfdfd; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial; display: inline !important; float: non=
e;">Hello
              dear usrp users,</span>
            <div style=3D"clear: both;" data-mce-style=3D"clear: both;"><=
br>
            </div>
            <div style=3D"clear: both;" data-mce-style=3D"clear: both;">I=

              want to write code using the UHD Python APIs, but I get an
              error when I try to run import uhd. UHD works properly in
              GNU Radio, but when I try to work with Python 3.8 from the
              terminal or in VSCode, I encounter the following error.
              How can I resolve this issue?<br data-mce-bogus=3D"1">
            </div>
            <div style=3D"clear: both;" data-mce-style=3D"clear: both;"><=
br
                data-mce-bogus=3D"1">
            </div>
            <div style=3D"clear: both;" data-mce-style=3D"clear: both;"><=
strong
style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zer=
o); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdec=
o-reset-base-border-zero); font-size: 16px; vertical-align: var(--artdeco=
-reset-base-vertical-align-baseline); background-color: #ffffff; outline:=
 var(--artdeco-reset-base-outline-zero); font-weight: var(--artdeco-reset=
-typography-font-weight-bold); font-family: -apple-system, system-ui, Bli=
nkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fira Sans', Ubunt=
u, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Apple Color Emoji', '=
Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida Grande', He=
lvetica, Arial, sans-serif; color: rgba(0, 0, 0, 0.9); font-style: normal=
; font-variant-ligatures: normal; font-variant-caps: normal; letter-spaci=
ng: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfo=
rm: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; w=
hite-space: normal; text-decoration-thickness: initial; text-decoration-s=
tyle: initial; text-decoration-color: initial;"
data-mce-style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-m=
argin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var=
(--artdeco-reset-base-border-zero); font-size: 16px; vertical-align: var(=
--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff;=
 outline: var(--artdeco-reset-base-outline-zero); font-weight: var(--artd=
eco-reset-typography-font-weight-bold); font-family: -apple-system, syste=
m-ui, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fira San=
s', Ubuntu, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Apple Color =
Emoji', 'Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida Gr=
ande', Helvetica, Arial, sans-serif; color: rgba(0, 0, 0, 0.9); font-styl=
e: normal; font-variant-ligatures: normal; font-variant-caps: normal; let=
ter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; white-space: normal; text-decoration-thickness: initial; text-dec=
oration-style: initial; text-decoration-color: initial;">export
PYTHONPATH=3D/usr/local/lib/python3/dist-packages/:$PYTHONPATH</strong></=
div>
            <div style=3D"clear: both;" data-mce-style=3D"clear: both;"><=
br
                data-mce-bogus=3D"1">
            </div>
          </div>
          <div>python3.8</div>
          <div>Python 3.8.10=C2=A0</div>
          <div>[GCC 9.4.0] on linux</div>
          <div>Type "help", "copyright", "credits" or "license" for more
            information.</div>
          <div>&gt;&gt;&gt; import uhd=C2=A0</div>
          <div>Traceback (most recent call last):</div>
          <div>=C2=A0 File "&lt;stdin&gt;", line 1, in &lt;module&gt;</di=
v>
          <div>ModuleNotFoundError: No module named 'uhd'</div>
        </div>
        <div><br>
        </div>
        <div><br data-mce-bogus=3D"1">
        </div>
        <div><br data-mce-bogus=3D"1">
        </div>
        <div>The versions on the device are:<br data-mce-bogus=3D"1">
        </div>
        <div>
          <div data-mce-style=3D"clear: both;"
style=3D"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; =
font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
background-color: rgb(255, 255, 255); text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial; clear: b=
oth;">=C2=A0</div>
          <div data-mce-style=3D"clear: both;"
style=3D"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; =
font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
background-color: rgb(255, 255, 255); text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial; clear: b=
oth;">
            <div data-mce-style=3D"clear: both;" style=3D"clear: both;">=C2=
=A0gnuradio-config-info
              --v</div>
            <div data-mce-style=3D"clear: both;" style=3D"clear: both;">v=
3.8.5.0-6-g57bd109d</div>
            <div data-mce-style=3D"clear: both;" style=3D"clear: both;">-=
----------------------------------</div>
            <div data-mce-style=3D"clear: both;" style=3D"clear: both;">
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">uhd_config_info
                --version</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">UHD
                4.7.0.0-0-ga5ed1872</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">------------------------------------------</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;"><br
                  data-mce-bogus=3D"1">
              </p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">uhd_find_devices</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">[INFO]
                [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
                UHD_4.7.0.0-0-ga5ed1872</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">--------------------------------------------------</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">--
                UHD Device 0</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">--------------------------------------------------</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">Device
                Address:</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">serial:
                33CB10C</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">addr:<span>=C2=A0</span><span
                  class=3D"Object" role=3D"link"
                  id=3D"OBJ_PREFIX_DWT106_com_zimbra_phone"
style=3D"color: #55516f; text-decoration: none; cursor: pointer;"
data-mce-style=3D"color: #55516f; text-decoration: none; cursor: pointer;=
"><a
                    href=3D"callto:192.168.10.2"
onclick=3D"window.top.Com_Zimbra_Phone.unsetOnbeforeunload()"
style=3D"color: #55516f; text-decoration: none; cursor: pointer;"
                    data-mce-href=3D"callto:192.168.10.2"
data-mce-style=3D"color: #55516f; text-decoration: none; cursor: pointer;=
"
                    moz-do-not-send=3D"true">192.168.10.2</a></span></p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">claimed:
                False</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">fpga:
                1G</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">mgmt_addr:<span>=C2=A0</span><span
                  class=3D"Object" role=3D"link"
                  id=3D"OBJ_PREFIX_DWT107_com_zimbra_phone"
style=3D"color: #55516f; text-decoration: none; cursor: pointer;"
data-mce-style=3D"color: #55516f; text-decoration: none; cursor: pointer;=
"><a
                    href=3D"callto:192.168.10.2"
onclick=3D"window.top.Com_Zimbra_Phone.unsetOnbeforeunload()"
style=3D"color: #55516f; text-decoration: none; cursor: pointer;"
                    data-mce-href=3D"callto:192.168.10.2"
data-mce-style=3D"color: #55516f; text-decoration: none; cursor: pointer;=
"
                    moz-do-not-send=3D"true">192.168.10.2</a></span></p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">name:
                ni-e320-33CB10C</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">product:
                e320</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">type:
                e3xx</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;"><span
style=3D"color: #000000; font-family: arial, helvetica, sans-serif; font-=
size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal;=
 text-indent: 0px; text-transform: none; word-spacing: 0px; white-space: =
normal; background-color: #ffffff; float: none; display: inline !importan=
t;"
data-mce-style=3D"color: #000000; font-family: arial, helvetica, sans-ser=
if; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing=
: normal; text-indent: 0px; text-transform: none; word-spacing: 0px; whit=
e-space: normal; background-color: #ffffff; float: none; display: inline =
!important;">----------------------------------------</span></p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;"><span
style=3D"color: #000000; font-family: arial, helvetica, sans-serif; font-=
size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal;=
 text-indent: 0px; text-transform: none; word-spacing: 0px; white-space: =
normal; background-color: #ffffff; float: none; display: inline !importan=
t;"
data-mce-style=3D"color: #000000; font-family: arial, helvetica, sans-ser=
if; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing=
: normal; text-indent: 0px; text-transform: none; word-spacing: 0px; whit=
e-space: normal; background-color: #ffffff; float: none; display: inline =
!important;"><br
                    data-mce-bogus=3D"1">
                </span></p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;"><span
style=3D"color: #000000; font-family: arial, helvetica, sans-serif; font-=
size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal;=
 text-indent: 0px; text-transform: none; word-spacing: 0px; white-space: =
normal; background-color: #ffffff; float: none; display: inline !importan=
t;"
data-mce-style=3D"color: #000000; font-family: arial, helvetica, sans-ser=
if; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing=
: normal; text-indent: 0px; text-transform: none; word-spacing: 0px; whit=
e-space: normal; background-color: #ffffff; float: none; display: inline =
!important;"><br
                    data-mce-bogus=3D"1">
                </span></p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">python3
                --version</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">Python
                3.8.10</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;"><span
style=3D"color: #000000; font-family: arial, helvetica, sans-serif; font-=
size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal;=
 text-indent: 0px; text-transform: none; word-spacing: 0px; white-space: =
normal; background-color: #ffffff; float: none; display: inline !importan=
t;"
data-mce-style=3D"color: #000000; font-family: arial, helvetica, sans-ser=
if; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing=
: normal; text-indent: 0px; text-transform: none; word-spacing: 0px; whit=
e-space: normal; background-color: #ffffff; float: none; display: inline =
!important;">----------------------------------------</span></p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">g++
                --version</p>
              <p
style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); =
color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; co=
lor: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;">g++
                (Ubuntu 9.4.0-1ubuntu1~<span class=3D"Object" role=3D"lin=
k"
                  id=3D"OBJ_PREFIX_DWT108_com_zimbra_phone"
style=3D"color: #55516f; text-decoration: none; cursor: pointer;"
data-mce-style=3D"color: #55516f; text-decoration: none; cursor: pointer;=
"><a
                    href=3D"callto:20.04.2) 9.4.0"
onclick=3D"window.top.Com_Zimbra_Phone.unsetOnbeforeunload()"
style=3D"color: #55516f; text-decoration: none; cursor: pointer;"
                    data-mce-href=3D"callto:20.04.2) 9.4.0"
data-mce-style=3D"color: #55516f; text-decoration: none; cursor: pointer;=
"
                    moz-do-not-send=3D"true">20.04.2) 9.4.0</a></span></p=
>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    How did you install UHD?=C2=A0=C2=A0 The Python API for UHD is differ=
ent from
    the interface that Gnu Radio uses for UHD -- they're<br>
    =C2=A0 different things.<br>
    <br>
    When you build UHD, you have to configure it to build the direct
    Python support for UHD.=C2=A0 It's likely that didn't<br>
    =C2=A0 happen when it was built.<br>
    <br>
    <br>
  </body>
</html>

--------------xgWwhfSlK2fsZsdInj2J4Pds--

--===============4939359396495465028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4939359396495465028==--
