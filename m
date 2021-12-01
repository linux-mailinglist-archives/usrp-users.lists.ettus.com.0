Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8047A4643E9
	for <lists+usrp-users@lfdr.de>; Wed,  1 Dec 2021 01:20:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A342384AE8
	for <lists+usrp-users@lfdr.de>; Tue, 30 Nov 2021 19:20:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CPvj/mHH";
	dkim-atps=neutral
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 9458C3846BA
	for <usrp-users@lists.ettus.com>; Tue, 30 Nov 2021 19:19:03 -0500 (EST)
Received: by mail-qt1-f178.google.com with SMTP id n15so22200026qta.0
        for <usrp-users@lists.ettus.com>; Tue, 30 Nov 2021 16:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=YJBVXgihT2FDT+pCqPYcvjD/kooRTLzJ/g1rTEvaucM=;
        b=CPvj/mHHpoQgeNNoGC9Lg3jmWukvXZZpKau7NV/vsuxYHRfzcMLb0sWuueM1aICqEn
         wpyMj5n8PZDIjvj1GQil86+Vgb4PQiRkwTq9sdz4kvVVIHHFp3lE4hHAbgKrxdiuYkqD
         AXtzMmwjBnBjakhMyjLHfirVrGOtv0QFrQyhS1y/9V2sh1fU4g98BJTtvw0PsvTEL7FY
         +Mkg4FgaPhptZ4MqPXSdU1JuZBHAMqMBf22KnAwgtRduN3EVIUwZtYzI5op/BtUbSIIk
         VTzIjttWRu5uNWb/Vn6QsuKUuFfM07zCpznq6iqKDwMsTG5/JRF1qahJ29K3iTsnbhPW
         UXWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=YJBVXgihT2FDT+pCqPYcvjD/kooRTLzJ/g1rTEvaucM=;
        b=4KK3VcvWZ/a5URutceIRcPwtmWPln7D4ZfWBCA1zDvYpRjAUhcRsbz6zgJKmKjvnlG
         lbpSUeDTRzIkzbFt/4KUv0wfxqV/u34PYkt7jVW8J5dbaRSR9LGtgriP3VtEv4Nldg97
         5dN6IUpdUUoVRcVc2smGQcVnJVQ6RgKFK4iMH0ivGtgnUTo7BjDrHWyA6718hs5ainh6
         A2wCryX9ZBEbuMWzQXHpaG5jWmI9HCaayKhJ/bkvoiptbeF5qW9fsP8FLoGAogaGXz6G
         nQ3npM+/IoRr1hAoX7vyru2LzlxughjP7sYuRHHHcGj73w2MYGCjogYg/bA+KtpEvSld
         fr9g==
X-Gm-Message-State: AOAM532gTjud4yfyty74SqVUuVlVesh3C+mRDGSopMgXutVonbZP3aMq
	10XPmRbwn95yJoRDX0RlXRDTvPlphYA=
X-Google-Smtp-Source: ABdhPJz2tar3AWFeGYxBsdxw2v5IXrY/PVhF3zbHX3wn49+9fLP5r/9OnZU2ouYJdRIkZOFT15eH+g==
X-Received: by 2002:ac8:7d01:: with SMTP id g1mr3311179qtb.175.1638317942664;
        Tue, 30 Nov 2021 16:19:02 -0800 (PST)
Received: from [192.168.2.220] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id c13sm11941523qtx.51.2021.11.30.16.19.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Nov 2021 16:19:02 -0800 (PST)
Message-ID: <34902af7-c4cf-8aa3-1b00-62c6573116ec@gmail.com>
Date: Tue, 30 Nov 2021 19:19:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR16MB350290C9B8C095A24BB79358B9669@MN2PR16MB3502.namprd16.prod.outlook.com>
 <c0883989-44e1-feab-c59b-f069c032c12c@gmail.com>
 <MN2PR16MB35020798AC36662AA6CA506CB9689@MN2PR16MB3502.namprd16.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR16MB35020798AC36662AA6CA506CB9689@MN2PR16MB3502.namprd16.prod.outlook.com>
Message-ID-Hash: SE36EYEGLM2J2JSSNWDF5M36BYHXO3WX
X-Message-ID-Hash: SE36EYEGLM2J2JSSNWDF5M36BYHXO3WX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP streaming data performance
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SE36EYEGLM2J2JSSNWDF5M36BYHXO3WX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4856922291409411978=="

This is a multi-part message in MIME format.
--===============4856922291409411978==
Content-Type: multipart/alternative;
 boundary="------------jUugHosfOkSyDk6JVBeL4kFg"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------jUugHosfOkSyDk6JVBeL4kFg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-30 19:14, Jonathan Pratt wrote:
>
> Have looked into the benchmark rate utility (uhd/host/build/examples/)=20
> which shows dropouts at any sample rate above 2MSPS. Have also run the=20
> same thing from a PC laptop running ubuntu 20.04 in a virtual machine=20
> with the same gnuradio (3.8), same uhd (4.0.0) and same gr-ettus=20
> (RFNoC 4). It also flags dropouts consistently at any sample rate=20
> above 2MSPS. =C2=A0The fpga image for the X310 was downloaded and insta=
lled=20
> according to the instructions in the hardware manual=20
> (https://files.ettus.com/manual/page_usrp_x3x0.html). It appears to us=20
> that the issue lies with something to do with the X310 or software=20
> that is communicating with it, or the fpga image.
>
> Is there any setup item we can change to get net traffic without=20
> dropouts? Will there be a problem if we don=E2=80=99t drain data from t=
he=20
> other receives at the same time since there are four of them?
>
> Thanks
>
> Jonathan Pratt
>
LOTS of people on this list *routinely* stream data out of their X310s=20
even over 1Gbit links at MUCH MUCH higher sample rates.=C2=A0 What kind o=
f=20
1Gbit or 10Gbit interface do you
 =C2=A0 have?=C2=A0 Are you using the SFP+ ports or the RJ-45 port?

What kind of computer is this on?=C2=A0 We generally DO NOT recommend vir=
tual=20
machine implementations because the performance tends to suffer,=20
PARTICULARLY
 =C2=A0 the Network and USB performance.


> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, 30 November 2021 10:35 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: USRP streaming data performance
>
> *WARNING:***This message has originated from an untrusted source. Be=20
> mindful of attachments and embedded links.
>
> On 2021-11-29 18:22, Jonathan Pratt wrote:
>
>     We are looking to develop a standalone sdr platform connecting an
>     nVidia Jetson AGX Xavier to a USRP X310. The X310 has two dual
>     receiver boards installed but we are only trying to stream data
>     from one core at this time.
>
>     The Xavier is an octacore ARM platform with all cores enabled and
>     running close to 1.5GHz.
>
>     The connection between the two devices is via ethernet running at
>     1Gbit. The xavier has a x16 PCIe interface connector and we are
>     using a NIC with 1Gbps SFP module =E2=80=93 we intend to run the li=
nk at
>     10Gbit in the future. The onboard 1Gbps ethernet is connected to
>     our LAN
>
>     The Xavier is running ubuntu 18.04 for arm. This is the
>     development platform that nVidia provides. uhd 4.0.0, gnuradio 3.8
>     and RfNoC 4 have been installed on the Xavier.
>
>     The Xavier is given a simple flow to run under gnuradio-companion
>     which consists of a USRP Source connected directly to =C2=A0the QT =
GUI
>     Frequency sink (or Null Sink)
>
>     The network buffers and mtu on the xavier are increased to at
>     least those recommended.
>
>     The result we get is a whole lot of =E2=80=98D=E2=80=99s output if =
we increase the
>     sample rate beyond 2MSPS. =C2=A0The same result is found if we run =
the
>     flow from the command line (without the gui).
>
>     For comparison we have done a similar setup with a USRP E312 =E2=80=
=93
>     connected to a xavier, a ubuntu 20 virtual machine and directly to
>     a computer running ubuntu 20.04. In each case when we increase the
>     sample rate beyond 2MSPS we get =E2=80=98O=E2=80=99s output.
>
>     Can anyone please indicate what setup is required to achieve the
>     25MSPS that should be possible across this link?
>
>     Thanks in advance
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list --usrp-users@lists.ettus.com
>
>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
> You might want to run "benchmark_rate" from the UHD examples code to=20
> eliminate GR entirely at first--just to get a feel for what your=20
> machine is capable of.
>
> I'll note that the "network mode" in E312 (where it streams to a=20
> regular PC) has *considerable* performance constraints, and achieving=20
> even 2Msps is a bit of a
> =C2=A0 miracle.
>
> The X310, on the other hand, is Niagara Falls.=C2=A0 Any=20
> streaming-performance issues are your host.=C2=A0 The FPGA on the X310 =
can=20
> stream to the xGIGe interfaces as fast as
> =C2=A0 physics allows, pretty much.
>
> For a "order of magnitude" benchmark, I can achieve 10Msps from a B2xx=20
> into an Odroid XU4Q with 8-bit samples (there's a USB bandwidth issue=20
> there).=C2=A0 I can even
> =C2=A0 "do stuff" at 10Msps, including several different radio astronom=
y=20
> signal processing chains.=C2=A0 I would expect your Xavier to be simila=
r.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------jUugHosfOkSyDk6JVBeL4kFg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-30 19:14, Jonathan Pratt
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR16MB35020798AC36662AA6CA506CB9689@MN2PR16MB3502.namprd16=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	font-size:10.0pt;
	font-family:"Courier New";
	mso-fareast-language:EN-AU;}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-fareast-language:EN-US;}span.EmailStyle23
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
        <p class=3D"MsoNormal">Have looked into the benchmark rate utilit=
y
          (uhd/host/build/examples/) which shows dropouts at any sample
          rate above 2MSPS. Have also run the same thing from a PC
          laptop running ubuntu 20.04 in a virtual machine with the same
          gnuradio (3.8), same uhd (4.0.0) and same gr-ettus (RFNoC 4).
          It also flags dropouts consistently at any sample rate above
          2MSPS. =C2=A0The fpga image for the X310 was downloaded and
          installed according to the instructions in the hardware manual
          (<a href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/manual/page_usrp_x3x0.html</a>).
          It appears to us that the issue lies with something to do with
          the X310 or software that is communicating with it, or the
          fpga image.
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Is there any setup item we can change to
          get net traffic without dropouts? Will there be a problem if
          we don=E2=80=99t drain data from the other receives at the same=
 time
          since there are four of them?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks<o:p></o:p></p>
        <p class=3D"MsoNormal">Jonathan Pratt</p>
      </div>
    </blockquote>
    LOTS of people on this list *routinely* stream data out of their
    X310s even over 1Gbit links at MUCH MUCH higher sample rates.=C2=A0 W=
hat
    kind of 1Gbit or 10Gbit interface do you<br>
    =C2=A0 have?=C2=A0 Are you using the SFP+ ports or the RJ-45 port?<br=
>
    <br>
    What kind of computer is this on?=C2=A0 We generally DO NOT recommend
    virtual machine implementations because the performance tends to
    suffer, PARTICULARLY<br>
    =C2=A0 the Network and USB performance.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR16MB35020798AC36662AA6CA506CB9689@MN2PR16MB3502.namprd16=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal"><b><span
                  style=3D"mso-fareast-language:EN-AU" lang=3D"EN-US">Fro=
m:</span></b><span
                style=3D"mso-fareast-language:EN-AU" lang=3D"EN-US"> Marc=
us
                D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailt=
o:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Tuesday, 30 November 2021 10:35 AM<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Re: USRP streaming data
                performance<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p><strong><span
style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black;backgroun=
d:#DFFF00">WARNING:</span></strong><strong><span
              style=3D"font-family:&quot;Calibri&quot;,sans-serif">
            </span></strong>This message has originated from an
          untrusted source. Be mindful of attachments and embedded
          links.<span style=3D"mso-fareast-language:EN-AU"><o:p></o:p></s=
pan></p>
        <div>
          <div>
            <p class=3D"MsoNormal">On 2021-11-29 18:22, Jonathan Pratt
              wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">We are looking to develop a standalone
              sdr platform connecting an nVidia Jetson AGX Xavier to a
              USRP X310. The X310 has two dual receiver boards installed
              but we are only trying to stream data from one core at
              this time.<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">The Xavier is an octacore ARM platform
              with all cores enabled and running close to 1.5GHz.<o:p></o=
:p></p>
            <p class=3D"MsoNormal">The connection between the two devices
              is via ethernet running at 1Gbit. The xavier has a x16
              PCIe interface connector and we are using a NIC with 1Gbps
              SFP module =E2=80=93 we intend to run the link at 10Gbit in=
 the
              future. The onboard 1Gbps ethernet is connected to our LAN
              <o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">The Xavier is running ubuntu 18.04 for
              arm. This is the development platform that nVidia
              provides. uhd 4.0.0, gnuradio 3.8 and RfNoC 4 have been
              installed on the Xavier.<o:p></o:p></p>
            <p class=3D"MsoNormal">The Xavier is given a simple flow to
              run under gnuradio-companion which consists of a USRP
              Source connected directly to =C2=A0the QT GUI Frequency sin=
k
              (or Null Sink)<o:p></o:p></p>
            <p class=3D"MsoNormal">The network buffers and mtu on the
              xavier are increased to at least those recommended.<o:p></o=
:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">The result we get is a whole lot of
              =E2=80=98D=E2=80=99s output if we increase the sample rate =
beyond 2MSPS.
              =C2=A0The same result is found if we run the flow from the
              command line (without the gui).<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">For comparison we have done a similar
              setup with a USRP E312 =E2=80=93 connected to a xavier, a u=
buntu
              20 virtual machine and directly to a computer running
              ubuntu 20.04. In each case when we increase the sample
              rate beyond 2MSPS we get =E2=80=98O=E2=80=99s output.<o:p><=
/o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Can anyone please indicate what setup
              is required to achieve the 25MSPS that should be possible
              across this link?<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Thanks in advance<o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"mso-fareast-language:EN-AU"><br>
                <br>
                <o:p></o:p></span></p>
            <pre>_______________________________________________<o:p></o:=
p></pre>
            <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@=
lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext"=
>usrp-users@lists.ettus.com</a><o:p></o:p></pre>
            <pre>To unsubscribe send an email to <a href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-lin=
k-freetext">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"mso-fareast-language:EN-AU">You might want to run
              "benchmark_rate" from the UHD examples code to eliminate
              GR entirely at first--just to get a feel for what your
              machine is capable of.<br>
              <br>
              I'll note that the "network mode" in E312 (where it
              streams to a regular PC) has *considerable* performance
              constraints, and achieving even 2Msps is a bit of a<br>
              =C2=A0 miracle.<br>
              <br>
              The X310, on the other hand, is Niagara Falls.=C2=A0 Any
              streaming-performance issues are your host.=C2=A0 The FPGA =
on
              the X310 can stream to the xGIGe interfaces as fast as<br>
              =C2=A0 physics allows, pretty much.<br>
              <br>
              For a "order of magnitude" benchmark, I can achieve 10Msps
              from a B2xx into an Odroid XU4Q with 8-bit samples
              (there's a USB bandwidth issue there).=C2=A0 I can even<br>
              =C2=A0 "do stuff" at 10Msps, including several different ra=
dio
              astronomy signal processing chains.=C2=A0 I would expect yo=
ur
              Xavier to be similar.=C2=A0
              <br>
              <br>
              <o:p></o:p></span></p>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>
--------------jUugHosfOkSyDk6JVBeL4kFg--

--===============4856922291409411978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4856922291409411978==--
