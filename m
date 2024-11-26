Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EC39D9B73
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 17:30:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36218385AF8
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 11:30:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732638645; bh=+hHEyQSIZAMaFYvOtfod1zdRzOfIskMC2XvRbFi9Cw0=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CizYfiKmZcDbl9IjnBnx7nfp4YqcHQ4WVOkBtfhef6V6Ol5xAWdg062TxZU/wiALr
	 1rBJt/a9hzCqbqwC0WdW0iXkg4ps3dmhuQ5Pz9wx3s52B2qCV/JVXMc2jKQKyFFrkV
	 fKvWL7O6h2PUr1+9oZjPS7ILrLm4QCSmn8eO9G3Q7MXfTglDBQSfxULUoUkS2wbQIf
	 jxKgfg2wH+//YZI/4VxfWeiUOfZlPzl+PrbsqoeSPUCOYUMpo+Q+F4SFsAF64ojR2M
	 PohtQ18T0J7NvorYVv4ZLsP+UJ8nrGBY/BpVAjADMhnw3bIwXgb6YvNjRApLGDG77D
	 BxF8wt6377VZA==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id CCF3B38535C
	for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 11:30:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZckpoTy4";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4668d12b629so18434111cf.2
        for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 08:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732638630; x=1733243430; darn=lists.ettus.com;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dJReyTbzHOS+WBAas131sCHBLvA0qtATQV5FA3hWl8o=;
        b=ZckpoTy4JGiU9ZXOcyDsDKdM33Vw/5Xb4y8p9QS70mc77LdBZrqH2LNfN6OGWi1CWk
         qom1RfBfTqnKbaSsg9UjN+xJLod599RaWyTGKZ38b7UZ4ZGgBbZ5t9IW1+Oip7pje/5K
         puHl+xNhR3nIMhE3/c7ByRkQ7BfYVZuKLaLBPslp6S7Et2eDFlBszLvmhHX2C60fWshU
         0C4Cp+UuG2tEh6jOjp4z8o8fXWzWOFlvKFS0LiYxYv8wL3pvfs4O3qY8kr31ezjorDmA
         FNEPa6PEwY287Jp3qpH6DhFfIiER5Q7T0ge+T2o+hcHIcJ7XMf3YbQDN0AK0ZH7ske1x
         uU+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732638630; x=1733243430;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dJReyTbzHOS+WBAas131sCHBLvA0qtATQV5FA3hWl8o=;
        b=qGl3+Wsf5QNZuChEqEeRRvXrgBWFnK234zFL8Rlsq6Xp9VpjO18Hj6TEcMP6MiLg4Q
         byvX5GVQgVEfW7pNpYkPB1Aq8z1ymjPkXg1iM4nR0eoVqFNZlvr0zudhQ13dfzaUD6TW
         +nBYKTXsK+gxkGpKiqWeug6fdX8xfvqjK+HTzFopl4NUsSRdnsYFDLTAQOdRJQBMCTVF
         u42q9oaKSUbSCsH9jL6usOvCT0TW3gBaC9D13bgD7CLBTZCjWf04rcr7lvTOnrw/oL4F
         hgg91rjmzaKAltSPe2BJa7Lpr7rAQdma+GpQm3KSrXdkc3qH/FN7kKerny7XfYHhnAcw
         kOwA==
X-Gm-Message-State: AOJu0YyUfmh6ZAI3fTjax9o3Ze/zZCxjqGt3wiX8d1eIIbupVdbt6Suf
	HVvICF2Kx9mw3udL3XDFEz3afDU83U1uDbScAOaSM2Cb2BK8VOE/RXkWng==
X-Gm-Gg: ASbGncsadK2eLmVqmzdDVsRgQHmxoyXdukECDzQ1ojXl4NIX8oeNWPfVoLlkyUvyGFQ
	bvuOLGei5ubXt0tLmnGuNUkYN2YmbGWr449OD8u33LbG7jwUATeIDBiv3E61vpN8l3aAl9wW1GD
	QlbhNkeZOrQLavyMCwqZAf9ix0g1gVqYUxuBnbSvXWWIvPGptsfM7qUGC78dR/ZTLuWvh1d1dnd
	i8DMNAF+YxLDk9xIsUwvtKcSQD5T3B1cZlvnKmVmj+/hFAmg6m3dgaQHTnK
X-Google-Smtp-Source: AGHT+IE2acNiuu+zeQX3Uodt5ntB0nDRE3nGjStX7lRpCflDN4dIpb5AKtIJz50bJ38Hpm+RSlrD8A==
X-Received: by 2002:a05:622a:116:b0:466:a51b:6281 with SMTP id d75a77b69052e-466a51b6421mr39310811cf.26.1732638630023;
        Tue, 26 Nov 2024 08:30:30 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4653c3ed111sm61094371cf.20.2024.11.26.08.30.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 08:30:29 -0800 (PST)
Message-ID: <cd4bb9a4-bb37-4752-a973-f54a4d46616d@gmail.com>
Date: Tue, 26 Nov 2024 11:30:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: =?UTF-8?B?SGFtZMO8c2VuYSBCxLBMR8SwIChCxLBMR0VNKQ==?=
 <hamdusena.bilgi@tubitak.gov.tr>
References: <848678402.19165407.1732543946189.JavaMail.zimbra@tubitak.gov.tr>
 <a292ca9d-7507-44ab-a81d-656b492be8f7@gmail.com>
 <1259680549.19394090.1732600402742.JavaMail.zimbra@tubitak.gov.tr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1259680549.19394090.1732600402742.JavaMail.zimbra@tubitak.gov.tr>
Message-ID-Hash: KI3CPVA45YKDC4ZHQ3L5HNIZNUF45DNM
X-Message-ID-Hash: KI3CPVA45YKDC4ZHQ3L5HNIZNUF45DNM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Module Not Found Error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KI3CPVA45YKDC4ZHQ3L5HNIZNUF45DNM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8568856900403565174=="

This is a multi-part message in MIME format.
--===============8568856900403565174==
Content-Type: multipart/alternative;
 boundary="------------GplxCPmgnYCbTi5WxGR80IIw"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------GplxCPmgnYCbTi5WxGR80IIw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/11/2024 00:53, Hamd=C3=BCsena B=C4=B0LG=C4=B0 (B=C4=B0LGEM) wrote:
> I installed dependecies
>
> sudo apt install git cmake g++ libboost-all-dev libgmp-dev swig=20
> python3-numpy python3-mako python3-sphinx python3-lxml doxygen=20
> libfftw3-dev libsdl1.2-dev libgsl-dev libqwt-qt5-dev libqt5opengl5-dev=20
> python3-pyqt5 liblog4cpp5-dev libzmq3-dev python3-yaml python3-click=20
> python3-click-plugins python3-zmq python3-scipy python3-gi=20
> python3-gi-cairo gobject-introspection gir1.2-gtk-3.0 build-essential=20
> libusb-1.0-0-dev python3-docutils python3-setuptools=20
> python3-ruamel.yaml python-is-python3
>
> and /created//directory, cloned the USRP Hardware Driver (UHD 4.0=20
> branch) from Ettus Research GitHub repository./
>
> *git clone*--*branch UHD-4.7 https://github.com/ettusresearch/uhd.git u=
hd*
>
> //
>
> cd /uhd/host/
> mkdir build
> cd build
> cmake ..
> make
> make test
> sudo make install
> sudo ldconfig
You need to explicitly enable the Python API in the build, see:

https://files.ettus.com/manual/page_python.html


> -----------------------------------------------------------------------=
-
> *Kimden: *"Marcus D. Leech" <patchvonbraun@gmail.com>
> *Kime: *"usrp-users" <usrp-users@lists.ettus.com>
> *G=C3=B6nderilenler: *25 Kas=C4=B1m Pazartesi 2024 18:04:27
> *Konu: *[USRP-users] Re: Module Not Found Error
>
> On 25/11/2024 09:12, Hamd=C3=BCsena B=C4=B0LG=C4=B0 (B=C4=B0LGEM) via U=
SRP-users wrote:
>
>
>     Hello dear usrp users,
>
>     I want to write code using the UHD Python APIs, but I get an error
>     when I try to run import uhd. UHD works properly in GNU Radio, but
>     when I try to work with Python 3.8 from the terminal or in VSCode,
>     I encounter the following error. How can I resolve this issue?
>
>     *export PYTHONPATH=3D/usr/local/lib/python3/dist-packages/:$PYTHONP=
ATH*
>
>     python3.8
>     Python 3.8.10
>     [GCC 9.4.0] on linux
>     Type "help", "copyright", "credits" or "license" for more informati=
on.
>     >>> import uhd
>     Traceback (most recent call last):
>     =C2=A0 File "<stdin>", line 1, in <module>
>     ModuleNotFoundError: No module named 'uhd'
>
>
>
>     The versions on the device are:
>     =C2=A0gnuradio-config-info --v
>     v3.8.5.0-6-g57bd109d
>     -----------------------------------
>
>     uhd_config_info --version
>
>     UHD 4.7.0.0-0-ga5ed1872
>
>     ------------------------------------------
>
>
>     uhd_find_devices
>
>     [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>     UHD_4.7.0.0-0-ga5ed1872
>
>     --------------------------------------------------
>
>     -- UHD Device 0
>
>     --------------------------------------------------
>
>     Device Address:
>
>     serial: 33CB10C
>
>     addr: 192.168.10.2
>
>     claimed: False
>
>     fpga: 1G
>
>     mgmt_addr: 192.168.10.2
>
>     name: ni-e320-33CB10C
>
>     product: e320
>
>     type: e3xx
>
>     ----------------------------------------
>
>
>
>     python3 --version
>
>     Python 3.8.10
>
>     ----------------------------------------
>
>     g++ --version
>
>     g++ (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0
>
>
> How did you install UHD?=C2=A0=C2=A0 The Python API for UHD is differen=
t from=20
> the interface that Gnu Radio uses for UHD -- they're
> =C2=A0 different things.
>
> When you build UHD, you have to configure it to build the direct=20
> Python support for UHD.=C2=A0 It's likely that didn't
> =C2=A0 happen when it was built.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------GplxCPmgnYCbTi5WxGR80IIw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/11/2024 00:53, Hamd=C3=BCsena B=C4=
=B0LG=C4=B0
      (B=C4=B0LGEM) wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:1259680549.19394090.1732600402742.JavaMail.zimbra@tubitak.gov=
=2Etr">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div
style=3D"font-family: arial, helvetica, sans-serif; font-size: 12pt; colo=
r: #000000">
        <div>I installed dependecies</div>
        <div><br data-mce-bogus=3D"1">
        </div>
        <div>sudo apt install git cmake g++ libboost-all-dev libgmp-dev
          swig python3-numpy python3-mako python3-sphinx python3-lxml
          doxygen libfftw3-dev libsdl1.2-dev libgsl-dev libqwt-qt5-dev
          libqt5opengl5-dev python3-pyqt5 liblog4cpp5-dev libzmq3-dev
          python3-yaml python3-click python3-click-plugins python3-zmq
          python3-scipy python3-gi python3-gi-cairo
          gobject-introspection gir1.2-gtk-3.0 build-essential
          libusb-1.0-0-dev python3-docutils python3-setuptools
          python3-ruamel.yaml python-is-python3<br data-mce-bogus=3D"1">
        </div>
        <div><br data-mce-bogus=3D"1">
        </div>
        <div>and <em
style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zer=
o); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdec=
o-reset-base-border-zero); font-size: 16px; vertical-align: var(--artdeco=
-reset-base-vertical-align-baseline); background-color: #ffffff; outline:=
 var(--artdeco-reset-base-outline-zero); font-style: var(--artdeco-reset-=
typography-font-style-italic); font-family: -apple-system, system-ui, Bli=
nkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fira Sans', Ubunt=
u, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Apple Color Emoji', '=
Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida Grande', He=
lvetica, Arial, sans-serif; color: rgba(0, 0, 0, 0.9); font-variant-ligat=
ures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform=
: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whi=
te-space: normal; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial;"
data-mce-style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-m=
argin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var=
(--artdeco-reset-base-border-zero); font-size: 16px; vertical-align: var(=
--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff;=
 outline: var(--artdeco-reset-base-outline-zero); font-style: var(--artde=
co-reset-typography-font-style-italic); font-family: -apple-system, syste=
m-ui, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fira San=
s', Ubuntu, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Apple Color =
Emoji', 'Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida Gr=
ande', Helvetica, Arial, sans-serif; color: rgba(0, 0, 0, 0.9); font-vari=
ant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; white-space: normal; text-decoration-thickness: initial; text-decor=
ation-style: initial; text-decoration-color: initial;">created</em><em
style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zer=
o); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdec=
o-reset-base-border-zero); font-size: 16px; vertical-align: var(--artdeco=
-reset-base-vertical-align-baseline); background-color: #ffffff; outline:=
 var(--artdeco-reset-base-outline-zero); font-style: var(--artdeco-reset-=
typography-font-style-italic); font-family: -apple-system, system-ui, Bli=
nkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fira Sans', Ubunt=
u, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Apple Color Emoji', '=
Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida Grande', He=
lvetica, Arial, sans-serif; color: rgba(0, 0, 0, 0.9); font-variant-ligat=
ures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform=
: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whi=
te-space: normal; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial;"
data-mce-style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-m=
argin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var=
(--artdeco-reset-base-border-zero); font-size: 16px; vertical-align: var(=
--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff;=
 outline: var(--artdeco-reset-base-outline-zero); font-style: var(--artde=
co-reset-typography-font-style-italic); font-family: -apple-system, syste=
m-ui, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fira San=
s', Ubuntu, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Apple Color =
Emoji', 'Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida Gr=
ande', Helvetica, Arial, sans-serif; color: rgba(0, 0, 0, 0.9); font-vari=
ant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; white-space: normal; text-decoration-thickness: initial; text-decor=
ation-style: initial; text-decoration-color: initial;">
            directory, c<span>loned the USRP Hardware Driver (UHD 4.0
              branch) from Ettus Research GitHub repository.</span></em><=
/div>
        <div>
          <p id=3D"ember89"
            class=3D"ember-view reader-text-block__paragraph"
style=3D"box-sizing: inherit; margin: 0px; padding: var(--artdeco-reset-b=
ase-padding-zero); border: var(--artdeco-reset-base-border-zero); font-si=
ze: 16px; vertical-align: var(--artdeco-reset-base-vertical-align-baselin=
e); background-color: rgb(255, 255, 255); font-weight: 400; line-height: =
var(--line-height-open); color: rgba(0, 0, 0, 0.9); font-family: -apple-s=
ystem, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot=
;Helvetica Neue&quot;, &quot;Fira Sans&quot;, Ubuntu, Oxygen, &quot;Oxyge=
n Sans&quot;, Cantarell, &quot;Droid Sans&quot;, &quot;Apple Color Emoji&=
quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Sego=
e UI Symbol&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, sans-seri=
f; pointer-events: all; font-style: normal; font-variant-ligatures: norma=
l; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-=
color: initial;"
data-mce-style=3D"box-sizing: inherit; margin: 0px; padding: var(--artdec=
o-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero)=
; font-size: 16px; vertical-align: var(--artdeco-reset-base-vertical-alig=
n-baseline); background-color: #ffffff; font-weight: 400; line-height: va=
r(--line-height-open); color: rgba(0, 0, 0, 0.9); font-family: -apple-sys=
tem, system-ui, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue',=
 'Fira Sans', Ubuntu, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Ap=
ple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', =
'Lucida Grande', Helvetica, Arial, sans-serif; pointer-events: all; font-=
style: normal; font-variant-ligatures: normal; font-variant-caps: normal;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; white-space: normal; text-decoration-thickness: initial; text=
-decoration-style: initial; text-decoration-color: initial;"><strong
style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zer=
o); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdec=
o-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-=
hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align=
-baseline); background: var(--artdeco-reset-base-background-transparent);=
 outline: var(--artdeco-reset-base-outline-zero); font-weight: var(--artd=
eco-reset-typography-font-weight-bold); font-family: var(--artdeco-reset-=
typography-font-family-sans);"
data-mce-style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-m=
argin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var=
(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-f=
ont-size-hundred-percent); vertical-align: var(--artdeco-reset-base-verti=
cal-align-baseline); background: var(--artdeco-reset-base-background-tran=
sparent); outline: var(--artdeco-reset-base-outline-zero); font-weight: v=
ar(--artdeco-reset-typography-font-weight-bold); font-family: var(--artde=
co-reset-typography-font-family-sans);">git
              clone<span class=3D"white-space-pre"
style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zer=
o); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdec=
o-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-=
hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align=
-baseline); background: var(--artdeco-reset-base-background-transparent);=
 outline: var(--artdeco-reset-base-outline-zero); white-space: pre !impor=
tant; font-family: var(--artdeco-reset-typography-font-family-sans);"
data-mce-style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-m=
argin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var=
(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-f=
ont-size-hundred-percent); vertical-align: var(--artdeco-reset-base-verti=
cal-align-baseline); background: var(--artdeco-reset-base-background-tran=
sparent); outline: var(--artdeco-reset-base-outline-zero); white-space: p=
re !important; font-family: var(--artdeco-reset-typography-font-family-sa=
ns);"> </span></strong>--<strong
style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zer=
o); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdec=
o-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-=
hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align=
-baseline); background: var(--artdeco-reset-base-background-transparent);=
 outline: var(--artdeco-reset-base-outline-zero); font-weight: var(--artd=
eco-reset-typography-font-weight-bold); font-family: var(--artdeco-reset-=
typography-font-family-sans);"
data-mce-style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-m=
argin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var=
(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-f=
ont-size-hundred-percent); vertical-align: var(--artdeco-reset-base-verti=
cal-align-baseline); background: var(--artdeco-reset-base-background-tran=
sparent); outline: var(--artdeco-reset-base-outline-zero); font-weight: v=
ar(--artdeco-reset-typography-font-weight-bold); font-family: var(--artde=
co-reset-typography-font-family-sans);">branch
              UHD-4.7 <a class=3D"moz-txt-link-freetext" href=3D"https://=
github.com/ettusresearch/uhd.git">https://github.com/ettusresearch/uhd.gi=
t</a> uhd</strong></p>
          <em
style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zer=
o); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdec=
o-reset-base-border-zero); font-size: 16px; vertical-align: var(--artdeco=
-reset-base-vertical-align-baseline); background-color: #ffffff; outline:=
 var(--artdeco-reset-base-outline-zero); font-style: var(--artdeco-reset-=
typography-font-style-italic); font-family: -apple-system, system-ui, Bli=
nkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fira Sans', Ubunt=
u, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Apple Color Emoji', '=
Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida Grande', He=
lvetica, Arial, sans-serif; color: rgba(0, 0, 0, 0.9); font-variant-ligat=
ures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform=
: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whi=
te-space: normal; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial;"
data-mce-style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-m=
argin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var=
(--artdeco-reset-base-border-zero); font-size: 16px; vertical-align: var(=
--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff;=
 outline: var(--artdeco-reset-base-outline-zero); font-style: var(--artde=
co-reset-typography-font-style-italic); font-family: -apple-system, syste=
m-ui, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fira San=
s', Ubuntu, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Apple Color =
Emoji', 'Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida Gr=
ande', Helvetica, Arial, sans-serif; color: rgba(0, 0, 0, 0.9); font-vari=
ant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; white-space: normal; text-decoration-thickness: initial; text-decor=
ation-style: initial; text-decoration-color: initial;"><span></span></em>=
</div>
        <div><br data-mce-bogus=3D"1">
        </div>
        <div>
          <div>cd /uhd/host/</div>
          <div>mkdir build</div>
          <div>cd build</div>
          <div>cmake ..</div>
          <div>
            <div>make</div>
            <div>make test</div>
            <div>sudo make install</div>
            <div>sudo ldconfig</div>
          </div>
        </div>
      </div>
    </blockquote>
    You need to explicitly enable the Python API in the build, see:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_python.html">https://files.ettus.com/manual/page_python.html</a=
><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:1259680549.19394090.1732600402742.JavaMail.zimbra@tubitak.gov=
=2Etr">
      <div
style=3D"font-family: arial, helvetica, sans-serif; font-size: 12pt; colo=
r: #000000">
        <hr id=3D"zwchr" data-marker=3D"__DIVIDER__">
        <div data-marker=3D"__HEADERS__"><b>Kimden: </b>"Marcus D. Leech"=

          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun=
@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Kime: </b>"usrp-users" <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&g=
t;</a><br>
          <b>G=C3=B6nderilenler: </b>25 Kas=C4=B1m Pazartesi 2024 18:04:2=
7<br>
          <b>Konu: </b>[USRP-users] Re: Module Not Found Error<br>
        </div>
        <div><br>
        </div>
        <div data-marker=3D"__QUOTED_TEXT__">
          <div class=3D"moz-cite-prefix">On 25/11/2024 09:12, Hamd=C3=BCs=
ena
            B=C4=B0LG=C4=B0 (B=C4=B0LGEM) via USRP-users wrote:<br>
          </div>
          <blockquote>
            <div
style=3D"font-family:'arial' , 'helvetica' , sans-serif;font-size:12pt;co=
lor:#000000">
              <div>
                <div>=C2=A0</div>
                <div><br>
                </div>
                <div><span
style=3D"color:#000000;font-family:'aptos' , 'aptos_embeddedfont' , 'apto=
s_msfontservice' , 'calibri' , 'helvetica' , sans-serif;font-size:16px;fo=
nt-style:normal;font-weight:400;letter-spacing:normal;text-indent:0px;tex=
t-transform:none;word-spacing:0px;white-space:normal;background-color:#fd=
fdfd;display:inline !important;float:none">Hello
                    dear usrp users,</span>
                  <div><br>
                  </div>
                  <div>I want to write code using the UHD Python APIs,
                    but I get an error when I try to run import uhd. UHD
                    works properly in GNU Radio, but when I try to work
                    with Python 3.8 from the terminal or in VSCode, I
                    encounter the following error. How can I resolve
                    this issue?<br>
                  </div>
                  <div><br>
                  </div>
                  <div><strong
style=3D"font-size:16px;background-color:#ffffff;font-family:'-apple-syst=
em' , 'system-ui' , 'blinkmacsystemfont' , 'segoe ui' , 'roboto' , 'helve=
tica neue' , 'fira sans' , 'ubuntu' , 'oxygen' , 'oxygen sans' , 'cantare=
ll' , 'droid sans' , 'apple color emoji' , 'segoe ui emoji' , 'segoe ui e=
moji' , 'segoe ui symbol' , 'lucida grande' , 'helvetica' , 'arial' , san=
s-serif;color:rgba( 0 , 0 , 0 , 0.9 );font-style:normal;letter-spacing:no=
rmal;text-indent:0px;text-transform:none;word-spacing:0px;white-space:nor=
mal">export
PYTHONPATH=3D/usr/local/lib/python3/dist-packages/:$PYTHONPATH</strong></=
div>
                  <div><br>
                  </div>
                </div>
                <div>python3.8</div>
                <div>Python 3.8.10=C2=A0</div>
                <div>[GCC 9.4.0] on linux</div>
                <div>Type "help", "copyright", "credits" or "license"
                  for more information.</div>
                <div>&gt;&gt;&gt; import uhd=C2=A0</div>
                <div>Traceback (most recent call last):</div>
                <div>=C2=A0 File "&lt;stdin&gt;", line 1, in &lt;module&g=
t;</div>
                <div>ModuleNotFoundError: No module named 'uhd'</div>
              </div>
              <div><br>
              </div>
              <div><br>
              </div>
              <div><br>
              </div>
              <div>The versions on the device are:<br>
              </div>
              <div>
                <div
style=3D"color:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-=
serif;font-size:16px;font-style:normal;font-weight:400;letter-spacing:nor=
mal;text-indent:0px;text-transform:none;word-spacing:0px;white-space:norm=
al;background-color:rgb( 255 , 255 , 255 )">=C2=A0</div>
                <div
style=3D"color:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-=
serif;font-size:16px;font-style:normal;font-weight:400;letter-spacing:nor=
mal;text-indent:0px;text-transform:none;word-spacing:0px;white-space:norm=
al;background-color:rgb( 255 , 255 , 255 )">
                  <div>=C2=A0gnuradio-config-info --v</div>
                  <div>v3.8.5.0-6-g57bd109d</div>
                  <div>-----------------------------------</div>
                  <div>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">uhd_con=
fig_info
                      --version</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">UHD
                      4.7.0.0-0-ga5ed1872</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">-------=
-----------------------------------</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal"><br>
                    </p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">uhd_fin=
d_devices</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">[INFO]
                      [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
                      UHD_4.7.0.0-0-ga5ed1872</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">-------=
-------------------------------------------</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">--
                      UHD Device 0</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">-------=
-------------------------------------------</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">Device
                      Address:</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">serial:=

                      33CB10C</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">addr:=C2=
=A0<span
                        class=3D"Object"
                        id=3D"OBJ_PREFIX_DWT106_com_zimbra_phone"
                        style=3D"color:#55516f;text-decoration:none"><a
                          style=3D"color:#55516f;text-decoration:none"
                          moz-do-not-send=3D"true">192.168.10.2</a></span=
></p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">claimed=
:
                      False</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">fpga:
                      1G</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">mgmt_ad=
dr:=C2=A0<span
                        class=3D"Object"
                        id=3D"OBJ_PREFIX_DWT107_com_zimbra_phone"
                        style=3D"color:#55516f;text-decoration:none"><a
                          style=3D"color:#55516f;text-decoration:none"
                          moz-do-not-send=3D"true">192.168.10.2</a></span=
></p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">name:
                      ni-e320-33CB10C</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">product=
:
                      e320</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">type:
                      e3xx</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal"><span
style=3D"color:#000000;font-family:'arial' , 'helvetica' , sans-serif;fon=
t-size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-=
indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgr=
ound-color:#ffffff;float:none;display:inline !important">----------------=
------------------------</span></p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal"><span
style=3D"color:#000000;font-family:'arial' , 'helvetica' , sans-serif;fon=
t-size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-=
indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgr=
ound-color:#ffffff;float:none;display:inline !important"><br>
                      </span></p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal"><span
style=3D"color:#000000;font-family:'arial' , 'helvetica' , sans-serif;fon=
t-size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-=
indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgr=
ound-color:#ffffff;float:none;display:inline !important"><br>
                      </span></p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">python3=

                      --version</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">Python
                      3.8.10</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal"><span
style=3D"color:#000000;font-family:'arial' , 'helvetica' , sans-serif;fon=
t-size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-=
indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgr=
ound-color:#ffffff;float:none;display:inline !important">----------------=
------------------------</span></p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">g++
                      --version</p>
                    <p
style=3D"margin:0px;line-height:16px;background:rgb( 253 , 253 , 253 );co=
lor:rgb( 0 , 0 , 0 );font-family:'arial' , 'helvetica' , sans-serif;font-=
size:16px;font-style:normal;font-weight:400;letter-spacing:normal;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal">g++
                      (Ubuntu 9.4.0-1ubuntu1~<span class=3D"Object"
                        id=3D"OBJ_PREFIX_DWT108_com_zimbra_phone"
                        style=3D"color:#55516f;text-decoration:none"><a
                          style=3D"color:#55516f;text-decoration:none"
                          moz-do-not-send=3D"true">20.04.2) 9.4.0</a></sp=
an></p>
                  </div>
                </div>
              </div>
            </div>
            <br>
          </blockquote>
          How did you install UHD?=C2=A0=C2=A0 The Python API for UHD is =
different
          from the interface that Gnu Radio uses for UHD -- they're<br>
          =C2=A0 different things.<br>
          <br>
          When you build UHD, you have to configure it to build the
          direct Python support for UHD.=C2=A0 It's likely that didn't<br=
>
          =C2=A0 happen when it was built.<br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated=
" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a><br>
          To unsubscribe send an email to
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users=
-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------GplxCPmgnYCbTi5WxGR80IIw--

--===============8568856900403565174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8568856900403565174==--
