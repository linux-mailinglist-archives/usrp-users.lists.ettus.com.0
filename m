Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29713B59664
	for <lists+usrp-users@lfdr.de>; Tue, 16 Sep 2025 14:42:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E39E53861DF
	for <lists+usrp-users@lfdr.de>; Tue, 16 Sep 2025 08:42:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758026566; bh=Hs7BQvECcMq9s8haz/jIinQeQEAUI5ox78WFUR7QfQI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=B0nLvzijVxCS/pwLdpAnd3Tz/Vj/Sx7DT3MQYbeNJbCCAjjaldp1unH1FxktDOwUO
	 f/LxtNtq0PqcSPUe+61v1kYyqrNJRFrfbaiEdER/5xt+EAIn7ZH9BZ2+GnarFDse+e
	 bEuCQVpNAJMKocPRBfXJA+5gL6g71oSeqqFHcw5SE8qjh/sqjsi2kzAw/QuvWkBnpm
	 Rsxidzm4e6xSgrr+k5VhmNxddYMPaaBaRH6da70zbKEb5i4Cx8cH8o81Yy37BAL5eN
	 Y4Q4fzoGrooZhmadUQfaQKHmeQnr0am0xL/VLIJLxKvm7OvU4yd7Io5UpwHFJNH/tn
	 29I6YwLDzducw==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 224FC385ECD
	for <usrp-users@lists.ettus.com>; Tue, 16 Sep 2025 08:41:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="mROARfdl";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b0b6bf0097aso474966466b.1
        for <usrp-users@lists.ettus.com>; Tue, 16 Sep 2025 05:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1758026509; x=1758631309; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rc0fhnyEACKIRmcGX6K5LBUQBYJtA+03q5u3fiyEkzg=;
        b=mROARfdlv1O1KccSaIkiuyXhPc+L9MP90JO0rNYu2Lpw5y5BsZlju9XsILz/zXpiWT
         Gh7we4Dfq549rKlkpAu/ZrsGsf4mqy1Za2xp1X9dmYfJjq+gRFk03EEqALUGiVcMA9wL
         GQBVnJh//MV6DqS4KndIMvhi8CHRyPJwZpL8U/QRNE2NufbJMm/lbV0uIMS6HBL8+7Vf
         PfaVgEct8ObDFZoceQAkFVNc6/1bZwf1qv9GQ/3vImLy9650sbR0pTMb6wfi2bErBZFE
         zWnerv8GV+omJo6hxmJtM26QOZ+QX62+KMaxVU0XQ78Ln5cwdNPytjU60Nh3WGgOdjQE
         ydpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758026509; x=1758631309;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rc0fhnyEACKIRmcGX6K5LBUQBYJtA+03q5u3fiyEkzg=;
        b=kFG7GJY/X1n7H8YVU+VUtvs6+1+4TYmRhpyF1hNg81uvghic8n5SAX+1nzNnGeO4cq
         0gqAQt5Yc8KwEPj137P2PKtwq0e43IELke82rmns52K2EkvEZBQ9U6h+bNvpTrufwedN
         ePBmeYsrhZf0WadUtQmxg82dc+qQwGikASNVH/Yz2EF2q4QrbFQ/JG0UVIFVBc6c+oeW
         flKshuZTQJch3E8hBvBeWPD9U7z/fKl74EbZUhNb+cNbBBGrRmq5M4eGIInMoZ6YNx/J
         5R7A2kHtctYfNAY9hZtx5PZ4ox43CyRf8BAwaLLJSiso1LfurLwEgG/jf7u9dejrS+7o
         iqWg==
X-Gm-Message-State: AOJu0Yy9RQzc0BrSvT5uLBGJz/ljAeiz+DuKJwJFEq5RjrubkWG6ysoV
	gmHPBA9A9Opba4WIX8nwrvLR03W7mQ5I+chk1qUKMHxYW0U0HYodI0As2neAXSvECa/StsWMB+t
	l0AxsRzLohTF9snX7y+X7eD1fhhxqIyp+98xmLhXkmYakaRHF+QCDk1U=
X-Gm-Gg: ASbGncsl/RZsaaRuchbOjyiLdfSC2dKogxxW89h2a7ds1/VJxKOyR8If4MXqdPEFqCQ
	mreVEBjqLtdO4XLwJwiABBKPCIf391rNUk1Oh2E4hgOBmFFYby3oNEiT/G6+s9DQthDS1XUBW+y
	2fgb7zKmnHP6jo8yssXqf0IL56E4flOe5pCkZvy5otLAB/SNN3hVf5kOffYqcZMf+8v3vu4r2Gm
	Xbx2bUiuR7JAFWtqkcyaz7e56Wk0mzhnNI8
X-Google-Smtp-Source: AGHT+IHoDOb0DXp1Ai1pCte0egb2z2/3/FUoKOoCl55RLMPiscjtx5cZASVbmDgl6VWRwJXfFHvS4OjcAXf0JVnjRN4=
X-Received: by 2002:a17:907:db15:b0:b0f:3a50:82a2 with SMTP id
 a640c23a62f3a-b0f3a508446mr919273766b.57.1758026508425; Tue, 16 Sep 2025
 05:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <wstv9FLXUY85WlqO0ARNaIcQbFBIcmKosQhviD0oA@lists.ettus.com>
In-Reply-To: <wstv9FLXUY85WlqO0ARNaIcQbFBIcmKosQhviD0oA@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 16 Sep 2025 14:41:37 +0200
X-Gm-Features: AS18NWBAt-o7pQBitlZh1l76EJgMxRsWXua5nLTdwCvl8I58O3unuhWFvZ3DwsE
Message-ID: <CAFOi1A53VJvS67LeUbTSzSOqLr9adK=pW9ukwTGJ_GakB2jy0A@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: CLS23SL4JLTOGYGSDOJ3MSJKQVJ7LUOV
X-Message-ID-Hash: CLS23SL4JLTOGYGSDOJ3MSJKQVJ7LUOV
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to pin a specific UHD version across machines/devcontainers?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CLS23SL4JLTOGYGSDOJ3MSJKQVJ7LUOV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5933542360828753323=="

--===============5933542360828753323==
Content-Type: multipart/alternative; boundary="0000000000008a6a89063eea7179"

--0000000000008a6a89063eea7179
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you want a guarantee that your Docker will always have the same UHD,
then building from source is actually not a bad idea. I would check why the
Python API is missing in your source build. There's two places to check:

1) The cmake output might say something like "Python libraries missing"
2) If CMake is successful, and everything is built and installed correctly,
then maybe the Python libs are not being installed into the right (or an
unexpected location).

--M

On Tue, Sep 16, 2025 at 12:59=E2=80=AFPM <ardelgado@gradiant.org> wrote:

> Hi!
>
> For a long time, i used the default UHD installation that ships with
> Ubuntu which is version 4.1.0.5.3 and I wanted to upgrade it (e.g.
> 4.9.0.0). It seems that the best option is using the next commands:
>
> sudo add-apt-repository ppa:ettusresearch/uhd
> sudo apt-get update
> sudo apt-get install libuhd-dev uhd-host
>
> While this is very convenient, I=E2=80=99d like to install the exact same=
 UHD
> version across differents devices and even in a devcontainer. The problem
> is that *PPA builds for Jammy and other versions change quickly* (e.g.
> ~jammy1, ~jammy2, ~jammy3), so I=E2=80=99m worried this could break repro=
ducibility
> over time. I need to match my N310 and X410 images with a stable UHD
> version.
>
> I also tried *building from source*, which works:
>
> git clone https://github.com/EttusResearch/uhd.git
>
> cd uhd
>
> git checkout v4.9.0.0
>
> cd host
>
> mkdir build && cd build
>
> cmake ..
>
> make -j$(nproc)
>
> sudo make install
>
> sudo ldconfig
>
> However, this approach feels too heavy to repeat frequently, and I
> additionally needed the Python API.
>
> After installing, *import uhd* initially failed:
>
> >>> import uhd
>
> Traceback (most recent call last):
>
> File "<stdin>", line 1, in <module>
>
> ModuleNotFoundError: No module named 'uhd'
>
>
> Could you recommend any other way to achieve this goal? I=E2=80=99m fine =
with
> using a version other than 4.9.0.0, but I=E2=80=99d like to test the impr=
ovements
> you introduced over my current version, especially regarding RFNoC.
>
> Best Regards,
>
> =C3=81lvaro
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008a6a89063eea7179
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you want a guarantee that your Docker will always =
have the same UHD, then building from source is actually not a bad idea. I =
would check why the Python API is missing in your source build. There&#39;s=
 two places to check:</div><div><br></div><div>1) The cmake output might sa=
y something like &quot;Python libraries missing&quot;</div><div>2) If CMake=
 is successful, and everything is built and installed=C2=A0correctly, then =
maybe the Python libs are not being installed into the right (or an unexpec=
ted location).</div><div><br></div><div>--M</div></div><br><div class=3D"gm=
ail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, Sep 16, 2025 at 12:59=E2=80=AFPM &lt;<a href=3D"mailto:ardelgado@gradia=
nt.org">ardelgado@gradiant.org</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><p>Hi!</p><p>For a long time, i used the defa=
ult UHD installation that ships with Ubuntu which is version 4.1.0.5.3 and =
I wanted to upgrade it (e.g. 4.9.0.0). It seems that the best option is usi=
ng the next commands:<br><br>sudo add-apt-repository ppa:ettusresearch/uhd<=
br>sudo apt-get update<br>sudo apt-get install libuhd-dev uhd-host</p><p>Wh=
ile this is very convenient, I=E2=80=99d like to install the exact same UHD=
 version across differents devices and even in a devcontainer. The problem =
is that <strong>PPA builds for Jammy and other versions change quickly</str=
ong> (e.g. ~jammy1, ~jammy2, ~jammy3), so I=E2=80=99m worried this could br=
eak reproducibility over time. I need to match my N310 and X410 images with=
 a stable UHD version.</p><p>I also tried=C2=A0<strong>building from source=
</strong>, which works:<br><br>git clone <a href=3D"https://github.com/Ettu=
sResearch/uhd.git" target=3D"_blank">https://github.com/EttusResearch/uhd.g=
it</a></p><p>cd uhd</p><p>git checkout v4.9.0.0</p><p>cd host</p><p>mkdir b=
uild &amp;&amp; cd build</p><p>cmake ..</p><p>make -j$(nproc)</p><p>sudo ma=
ke install</p><p>sudo ldconfig</p><p>However, this approach feels too heavy=
 to repeat frequently, and I additionally needed the Python API. </p><p>Aft=
er installing, <strong>import uhd</strong>=C2=A0initially failed:<br><br>&g=
t;&gt;&gt; import uhd</p><p>Traceback (most recent call last):</p><p>  File=
 &quot;&lt;stdin&gt;&quot;, line 1, in &lt;module&gt;</p><p>ModuleNotFoundE=
rror: No module named &#39;uhd&#39;</p><p><br></p><p>Could you recommend an=
y other way to achieve this goal? I=E2=80=99m fine with using a version oth=
er than 4.9.0.0, but I=E2=80=99d like to test the improvements you introduc=
ed=C2=A0over my current version, especially regarding RFNoC.</p><p>Best Reg=
ards,</p><p>=C3=81lvaro</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008a6a89063eea7179--

--===============5933542360828753323==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5933542360828753323==--
