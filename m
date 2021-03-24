Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D87534838A
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 22:24:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D591383F98
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 17:24:00 -0400 (EDT)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id CDFFB383F97
	for <USRP-users@lists.ettus.com>; Wed, 24 Mar 2021 17:23:08 -0400 (EDT)
Received: by mail-qk1-f175.google.com with SMTP id y5so18076923qkl.9
        for <USRP-users@lists.ettus.com>; Wed, 24 Mar 2021 14:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=R88DN2Xpql3PmWRjMVJUWnn4o5DdCjf++u4AdcI2pfk=;
        b=YDFigxZOQqhCHat6toyixrbByPjKVOMrzIZnWbn13Uup20O0cm5MaNXaXMRAs79Hft
         i9oizTJmTWuiuVkcjNOmJHLJVP9rQs/kcZbdhkyVEECSlvd9Iz6tEzkZV3aQl1rnP+QQ
         eVy4H0i99yr1BDA96VIdfDjZkqVtC3qVlxkaMqAG0E1g5ubusztT9JMYTBBbXeRxpwfw
         thwIvGzEp6MCKoIofp8PgpGRqueVo1Oo4E5BuMQWWcEUbl9YbQPQiiP08OfcPS6gTabb
         VtZsHX5al6Ncdtachhay0YuLUNvuYLv+2xwcDAY4u2fsTfjUDAn7DTNEgW6XH6tz8XuZ
         UjsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=R88DN2Xpql3PmWRjMVJUWnn4o5DdCjf++u4AdcI2pfk=;
        b=RBrLK6h8/NwOfSQlgNP0mn1r7YCujztwC7Mo+EL6tQ+n4SWl2wLvZ3HD6bSxMrEO4A
         cNH5NPAb3w9LjTXDbJ52GOgFH5uSr10Y9/Nld3U3B/fuYnIJpRU3SA1BOYjiWHY5OK6N
         C8ZZOdISFlpFxUeCDp0yGpeSkbD+YoqM2DsSx1W4vfjF5cBLhzaCks6JdUA6dP2MvPoX
         669O56USTuwcv19n6Cs2lAHVqubViq11GtGITt+GyZgZQewMGPgpVxqBfjW6QsbdLxj+
         YfFsT9Qd6lEdmQwpMYzMM3Ag/CXVFcTo9Xgg4SfhaZo/iHxmeV9lDoRTYv4qOF5IYWJJ
         vOAw==
X-Gm-Message-State: AOAM532+np408OlZvOZOTe0+vIL7oYMSu2PwJ8Gd7GX3pvxsGdRYknO4
	YJfGrqCTenpxMJqNRLao+pu1AkVGOTU=
X-Google-Smtp-Source: ABdhPJzgloLRuU87BhqpynI0z9007BCEooawSUXQ6tUbJZyx0PV1oFPuOVW0jfYngHxW33Cc/P+ZBA==
X-Received: by 2002:a37:a996:: with SMTP id s144mr5034329qke.407.1616620988175;
        Wed, 24 Mar 2021 14:23:08 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id i14sm2294966qtq.81.2021.03.24.14.23.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 14:23:07 -0700 (PDT)
Message-ID: <605BADBA.7060702@gmail.com>
Date: Wed, 24 Mar 2021 17:23:06 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
References: <CO6PR19MB480129D90FEE1BBDDE609C7BC6639@CO6PR19MB4801.namprd19.prod.outlook.com> <05D2F2F3-1436-42F2-8E8E-7436B8FEC8CE@gmail.com> <CO6PR19MB48014D759070FADD80A96706C6639@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB48014D759070FADD80A96706C6639@CO6PR19MB4801.namprd19.prod.outlook.com>
Message-ID-Hash: S7FDODWFJGOG7PZYJXLMXFPYDTPPKDSG
X-Message-ID-Hash: S7FDODWFJGOG7PZYJXLMXFPYDTPPKDSG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Strong noise added to signal transmitted by X310 with a UBX 40 daughterboard
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S7FDODWFJGOG7PZYJXLMXFPYDTPPKDSG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0301515912355161279=="

This is a multi-part message in MIME format.
--===============0301515912355161279==
Content-Type: multipart/alternative;
 boundary="------------090205060900000509070608"

This is a multi-part message in MIME format.
--------------090205060900000509070608
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/24/2021 05:10 PM, Jerrid Plymale wrote:
>
> The devices are operating using direct connection via coax cables.
>
You absolutely need to put a 30dB attenuator in-line to prevent RX=20
destruction in the case of "ooops" moments from setting the TX
   power output too high.

> The target frequency is 1.57542 GHz, and our current bandwidth is 4=20
> MHz. We will need to increase the bandwidth to 20 MHz soon for further=20
> system development.
>
> The TX and RX gain are maxed on the receiving hardware. The TX gain of=20
> the transmitting hardware is set to 0, as at max the noise strength=20
> increases to ~ 20 dB.
>
> Attached are images of the FFT provided by the Frequency Sink in=20
> Gnuradio. Hopefully these give a visual aid for the problem at hand.=20
> When I have the transmitter USRP turned off (image 1), it would seem=20
> like the noise floor coming into the USRP is around -94 dB. When the=20
> transmitter is turned on and the flowgraph is started with the=20
> transmitted signal muted (I am using a python block with code to=20
> create custom signals that is then connected to a mute block that then=20
> connects to the UHD USRP sink block to be able to mute the signal=20
> during runtime), the noise floor increases to around -78 dB.
>
> Best Regards,
>
> Jerrid
>
You are likely just seeing the LO leakage, along with the inevitable=20
phase-noise curve of the LO.


> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, March 24, 2021 11:58 AM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Strong noise added to signal transmitted=20
> by X310 with a UBX 40 daughterboard
>
> Is the j B is over-the-air or direct connection?
>
> What frequency? Bandwidth?
>
> Do you have TX and RX gain turned all the way up?
>
> Can you share your flow-graphs, or minimum
>
> Graphs that show the problem?
>
> Sent from my iPhone
>
>
>
>     On Mar 24, 2021, at 12:20 PM, Jerrid Plymale
>     <jerrid.plymale@canyon-us.com
>     <mailto:jerrid.plymale@canyon-us.com>> wrote:
>
>     =EF=BB=BF
>
>     Hello All,
>
>     I have been running tests in which I am transmitting a signal from
>     one USRP X310 that=E2=80=99s using a UBX 40 daughterboard, and that=
 signal
>     is being received by another USRP X310 using a UBX 40
>     daughterboard. I have noticed that when I have the receiving USRP
>     running with the Gnuradio flowgraph active, as soon as I start the
>     transmitting USRP=E2=80=99s Gnuradio flowgraph, there is a jump in =
the
>     noise floor as it is seen by the receiving USRP, and its roughly a
>     14 dB increase. This occurs even if I have the signal being
>     transmitted muted. Does anyone have any idea what the source of
>     this added noise could be? It is something that I need to mitigate
>     as much as possible for the tests I am running using these USRPs.
>     Any feedback will be greatly appreciated, thanks!
>
>     Best Regards,
>
>     Jerrid
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------090205060900000509070608
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 03/24/2021 05:10 PM, Jerrid Plymale
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CO6PR19MB48014D759070FADD80A96706C6639@CO6PR19MB4801.namprd19=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">The devices are operating using direct
          connection via coax cables.</p>
      </div>
    </blockquote>
    You absolutely need to put a 30dB attenuator in-line to prevent RX
    destruction in the case of "ooops" moments from setting the TX<br>
    =C2=A0 power output too high.<br>
    <br>
    <blockquote
cite=3D"mid:CO6PR19MB48014D759070FADD80A96706C6639@CO6PR19MB4801.namprd19=
.prod.outlook.com"
      type=3D"cite">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">The target frequency is 1.57542 GHz, and
          our current bandwidth is 4 MHz. We will need to increase the
          bandwidth to 20 MHz soon for further system development.<o:p></=
o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">The TX and RX gain are maxed on the
          receiving hardware. The TX gain of the transmitting hardware
          is set to 0, as at max the noise strength increases to ~ 20
          dB.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Attached are images of the FFT provided by
          the Frequency Sink in Gnuradio. Hopefully these give a visual
          aid for the problem at hand. When I have the transmitter USRP
          turned off (image 1), it would seem like the noise floor
          coming into the USRP is around -94 dB. When the transmitter is
          turned on and the flowgraph is started with the transmitted
          signal muted (I am using a python block with code to create
          custom signals that is then connected to a mute block that
          then connects to the UHD USRP sink block to be able to mute
          the signal during runtime), the noise floor increases to
          around -78 dB.
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Jerrid=C2=A0 <br>
        </p>
      </div>
    </blockquote>
    You are likely just seeing the LO leakage, along with the inevitable
    phase-noise curve of the LO.<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CO6PR19MB48014D759070FADD80A96706C6639@CO6PR19MB4801.namprd19=
.prod.outlook.com"
      type=3D"cite">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Wednesday, March 24, 2021 11:58 AM<br>
              <b>To:</b> Jerrid Plymale
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jerrid.pl=
ymale@canyon-us.com">&lt;jerrid.plymale@canyon-us.com&gt;</a><br>
              <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
              <b>Subject:</b> Re: [USRP-users] Strong noise added to
              signal transmitted by X310 with a UBX 40 daughterboard<o:p>=
</o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Is the j B is over-the-air or direct
          connection?<o:p></o:p></p>
        <div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal">What frequency? Bandwidth?<o:p></o:p></p=
>
        </div>
        <div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal">Do you have TX and RX gain turned all th=
e
            way up?<o:p></o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal">Can you share your flow-graphs, or
            minimum<o:p></o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Graphs th=
at
            show the problem?<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><br>
              <br>
              <o:p></o:p></p>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Ma=
r
                24, 2021, at 12:20 PM, Jerrid Plymale &lt;<a
                  moz-do-not-send=3D"true"
                  href=3D"mailto:jerrid.plymale@canyon-us.com">jerrid.ply=
male@canyon-us.com</a>&gt;
                wrote:<o:p></o:p></p>
            </blockquote>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <p class=3D"MsoNormal">=EF=BB=BF <o:p></o:p></p>
              <p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">I have been running tests in which I
                am transmitting a signal from one USRP X310 that=E2=80=99=
s using
                a UBX 40 daughterboard, and that signal is being
                received by another USRP X310 using a UBX 40
                daughterboard. I have noticed that when I have the
                receiving USRP running with the Gnuradio flowgraph
                active, as soon as I start the transmitting USRP=E2=80=99=
s
                Gnuradio flowgraph, there is a jump in the noise floor
                as it is seen by the receiving USRP, and its roughly a
                14 dB increase. This occurs even if I have the signal
                being transmitted muted. Does anyone have any idea what
                the source of this added noise could be? It is something
                that I need to mitigate as much as possible for the
                tests I am running using these USRPs. Any feedback will
                be greatly appreciated, thanks!<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
              <p class=3D"MsoNormal">____________________________________=
___________<br>
                USRP-users mailing list -- <a moz-do-not-send=3D"true"
                  href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a><br>
                To unsubscribe send an email to <a
                  moz-do-not-send=3D"true"
                  href=3D"mailto:usrp-users-leave@lists.ettus.com">
                  usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------090205060900000509070608--

--===============0301515912355161279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0301515912355161279==--
