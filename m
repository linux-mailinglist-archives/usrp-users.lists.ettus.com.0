Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C842349CAB
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 00:07:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AFC2D384964
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 19:07:57 -0400 (EDT)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id E2FB3384080
	for <USRP-users@lists.ettus.com>; Thu, 25 Mar 2021 19:07:04 -0400 (EDT)
Received: by mail-qk1-f175.google.com with SMTP id z10so3530596qkz.13
        for <USRP-users@lists.ettus.com>; Thu, 25 Mar 2021 16:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=5TUhrH1uIoDOyCWZiXMy7Q/GqXen24Eu4g3pNcDOVGU=;
        b=uMmcT25IBwAqyfuJiTzzpNZXD2HX1mbyBJfQ5pxyKWoPtYt8WoMRUrkaETe4w6CrM+
         x1LFleakFA2O+oo1MKmFMewIGe9yuUzXMJAQ+1RYIGodvRxbLFUwsxjnj9qjcAztVTTs
         qay2Uda5IioMf0HwtK4Vach7JFnO4VJM/bFlIGff/UoS0rrmJSVNz6M7sOiSmuwVuMDQ
         omt/vtf+8uZjp61q0BXBTcOI2m8UGeSVo2F5/J1WYYS0iOPQ+oTDg0v07gAKYzyb/y8B
         MCi8TE9DfPTtdTMXXqoE0hJkvXqttCBIqdhLZ/EUlQSyffZWFQ5OLMi7MBltNYdlkKbu
         IDKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=5TUhrH1uIoDOyCWZiXMy7Q/GqXen24Eu4g3pNcDOVGU=;
        b=leDkmQkFx+WJ/dcA6gS6cRB2PlQm0NdK1UkX8oZDa4im2rJySHZQ722KKsJZmjJI4e
         9+M6ZpaUUf4s0nB8pwTXAAEJzr1MdALZE7dyQYDClB+aCxCGPRdTXlr6t0J5GGZNTb5b
         QCGwlsNgOW17pejLKGorNV5GsACGI0wUyv9PUymerLCAEYKnTu4U0EYUISAruSQKAbLj
         PkGG5Q9Kq/mmMXhyMwsCxlrTuLbj2srFToGTDH4ndLoeGy/Y82LSZMgtIvBznDjNd/NV
         8pANzYcobSnodtVGfGczxwpT52C2qYBumhq3kLCnKJKmrR1/4XrLnZ9+hOnecVfx10Od
         5Bqg==
X-Gm-Message-State: AOAM533XaPpx7kx9VAgEEn/PvbEGC0RfUMhDFRpT7VEAylX2Hl/2IKgp
	ifiddwMDAt9MRKUN2/T6cWdrTxwoor4=
X-Google-Smtp-Source: ABdhPJzMXw1FurxRAB8zEVwAR5gzLVBIeBBZdOimH+Olub1RPdOS3g3+6kKr+F8kQ4dB9qiHTfvS4g==
X-Received: by 2002:a05:620a:13db:: with SMTP id g27mr10748741qkl.367.1616713624157;
        Thu, 25 Mar 2021 16:07:04 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id j129sm5226194qkf.110.2021.03.25.16.07.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 16:07:03 -0700 (PDT)
Message-ID: <605D1797.3090303@gmail.com>
Date: Thu, 25 Mar 2021 19:07:03 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
References: <CO6PR19MB4801B529457BF78A00D8B586C6629@CO6PR19MB4801.namprd19.prod.outlook.com> <C84B8180-D431-4FCA-B6CB-14130D962FCB@gmail.com> <CO6PR19MB4801DB414DF00ABDEDEC561AC6629@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB4801DB414DF00ABDEDEC561AC6629@CO6PR19MB4801.namprd19.prod.outlook.com>
Message-ID-Hash: FNQ2XVZJD5THCGXSFD2FZ5NO3UH6IQDO
X-Message-ID-Hash: FNQ2XVZJD5THCGXSFD2FZ5NO3UH6IQDO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Strong noise added to signal transmitted by X310 with a UBX 40 daughterboard
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FNQ2XVZJD5THCGXSFD2FZ5NO3UH6IQDO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2622113910686282951=="

This is a multi-part message in MIME format.
--===============2622113910686282951==
Content-Type: multipart/alternative;
 boundary="------------030707030508080909010101"

This is a multi-part message in MIME format.
--------------030707030508080909010101
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/25/2021 07:01 PM, Jerrid Plymale wrote:
>
> We currently are not using a 30dB attenuator in the coax line, I was=20
> not aware that one was needed until you brought it up. We are looking=20
> into getting one ordered at the moment. Could this be the cause of the=20
> problem?
>
> Best Regards,
>
> Jerrid
>
The problem is that if you transmit directly into an RX with the TX=20
power turned up, you can fry the RX.

It also provides a much more realistic simulation of an over-the-air=20
link.   ANY receiver that is designed for "Over The Air" reception will
   have a pre-amp that doesn't like to receive power levels above about=20
-15dBm (which for over-the-air signals is very very loud).

With the noise figure of your RX (if it isn't damaged already) being=20
only about 4dB, it's going to be fairly sensitive to any low-level noise
   that happens to get coupled out of the X3xx electronics when the=20
mixer and RF amplifier are "brought up" when a flow-graph is started.

Even when you're transmitting with a "0dB" setting, it can still be=20
producing up to about -20dBm power output--the attenuator is
   31.5dB in 0.5dB steps, and the max Pout of the UBX is about +10dBm as=20
I recall.  Now, with zeros going to the ADC, the IF port of
   the mixer isn't going to be seeing much power, but it won't be seeing=20
exactly zero power because of the inevitable DAC noise.

It will be instructive to see your results with a 30dB attenuator=20
in-line and using the suggested tx_waveforms test.




> *From:*Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Thursday, March 25, 2021 3:40 PM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Strong noise added to signal transmitted=20
> by X310 with a UBX 40 daughterboard
>
> Could you confirm that you=E2=80=99re using at least 30dB of attenuatio=
n in=20
> the coax link?
>
> Sent from my iPhone
>
>
>
>     On Mar 25, 2021, at 6:27 PM, Jerrid Plymale
>     <jerrid.plymale@canyon-us.com
>     <mailto:jerrid.plymale@canyon-us.com>> wrote:
>
>     =EF=BB=BF
>
>     Yes, moving TX out of the RX band has no affect on the noise level
>     increase.
>
>     Best Regards,
>
>     Jerrid
>
>     *From:*Marcus D Leech <patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>>
>     *Sent:* Thursday, March 25, 2021 2:29 PM
>     *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com
>     <mailto:jerrid.plymale@canyon-us.com>>
>     *Cc:* USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com=
>
>     *Subject:* Re: [USRP-users] Strong noise added to signal
>     transmitted by X310 with a UBX 40 daughterboard
>
>     If you move the TX out of band with respect to the RX do you still
>     see the noise when the TX graph starts?
>
>     Sent from my iPhone
>
>
>
>
>         On Mar 25, 2021, at 3:57 PM, Jerrid Plymale
>         <jerrid.plymale@canyon-us.com
>         <mailto:jerrid.plymale@canyon-us.com>> wrote:
>
>         =EF=BB=BF
>
>         So I was able to test setting up both USRPs with the same 10
>         MHz reference signal, and there was no improvement to the
>         noise being added.
>
>         If the flowgraph just emits a CW tone, we see a similar
>         response, the added noise is still there and at the same
>         level, we just have the added spike of the CW tone at the
>         frequency we set it to.
>
>         Best Regards,
>
>         Jerrid
>
>         *From:*Marcus D Leech <patchvonbraun@gmail.com
>         <mailto:patchvonbraun@gmail.com>>
>         *Sent:* Wednesday, March 24, 2021 5:01 PM
>         *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com
>         <mailto:jerrid.plymale@canyon-us.com>>
>         *Cc:* USRP-users@lists.ettus.com
>         <mailto:USRP-users@lists.ettus.com>
>         *Subject:* Re: [USRP-users] Strong noise added to signal
>         transmitted by X310 with a UBX 40 daughterboard
>
>         You don=E2=80=99t need 1PPS for this. Having an external high q=
uality
>         reference may help, assuming my guess about your issue is
>         correct.
>
>         What happens if your flow graph just simply emits a Cw tone,
>         using the mute function perhaps tied to a GUI control or some
>         such.
>
>         Sent from my iPhone
>
>
>
>
>
>             On Mar 24, 2021, at 7:13 PM, Jerrid Plymale
>             <jerrid.plymale@canyon-us.com
>             <mailto:jerrid.plymale@canyon-us.com>> wrote:
>
>             =EF=BB=BF
>
>             Ok, if that=E2=80=99s the case, would it help to have both =
USRPs
>             connected to the same 10 MHz reference signal and PPS? In
>             this situation, would I need to provide a secondary source
>             for the PPS, or can that use the 10 Mhz reference as well?
>
>             Best Regards,
>
>             Jerrid
>
>             *From:*Marcus D. Leech <patchvonbraun@gmail.com
>             <mailto:patchvonbraun@gmail.com>>
>             *Sent:* Wednesday, March 24, 2021 2:23 PM
>             *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com
>             <mailto:jerrid.plymale@canyon-us.com>>
>             *Cc:* USRP-users@lists.ettus.com
>             <mailto:USRP-users@lists.ettus.com>
>             *Subject:* Re: [USRP-users] Strong noise added to signal
>             transmitted by X310 with a UBX 40 daughterboard
>
>             On 03/24/2021 05:10 PM, Jerrid Plymale wrote:
>
>                 The devices are operating using direct connection via
>                 coax cables.
>
>             You absolutely need to put a 30dB attenuator in-line to
>             prevent RX destruction in the case of "ooops" moments from
>             setting the TX
>               power output too high.
>
>
>
>
>
>                 The target frequency is 1.57542 GHz, and our current
>                 bandwidth is 4 MHz. We will need to increase the
>                 bandwidth to 20 MHz soon for further system development=
.
>
>                 The TX and RX gain are maxed on the receiving
>                 hardware. The TX gain of the transmitting hardware is
>                 set to 0, as at max the noise strength increases to ~
>                 20 dB.
>
>                 Attached are images of the FFT provided by the
>                 Frequency Sink in Gnuradio. Hopefully these give a
>                 visual aid for the problem at hand. When I have the
>                 transmitter USRP turned off (image 1), it would seem
>                 like the noise floor coming into the USRP is around
>                 -94 dB. When the transmitter is turned on and the
>                 flowgraph is started with the transmitted signal muted
>                 (I am using a python block with code to create custom
>                 signals that is then connected to a mute block that
>                 then connects to the UHD USRP sink block to be able to
>                 mute the signal during runtime), the noise floor
>                 increases to around -78 dB.
>
>                 Best Regards,
>
>                 Jerrid
>
>             You are likely just seeing the LO leakage, along with the
>             inevitable phase-noise curve of the LO.
>
>
>
>
>
>
>                 *From:* Marcus D Leech <patchvonbraun@gmail.com>
>                 <mailto:patchvonbraun@gmail.com>
>                 *Sent:* Wednesday, March 24, 2021 11:58 AM
>                 *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
>                 <mailto:jerrid.plymale@canyon-us.com>
>                 *Cc:* USRP-users@lists.ettus.com
>                 <mailto:USRP-users@lists.ettus.com>
>                 *Subject:* Re: [USRP-users] Strong noise added to
>                 signal transmitted by X310 with a UBX 40 daughterboard
>
>                 Is the j B is over-the-air or direct connection?
>
>                 What frequency? Bandwidth?
>
>                 Do you have TX and RX gain turned all the way up?
>
>                 Can you share your flow-graphs, or minimum
>
>                 Graphs that show the problem?
>
>                 Sent from my iPhone
>
>
>
>
>
>
>
>                     On Mar 24, 2021, at 12:20 PM, Jerrid Plymale
>                     <jerrid.plymale@canyon-us.com
>                     <mailto:jerrid.plymale@canyon-us.com>> wrote:
>
>                     =EF=BB=BF
>
>                     Hello All,
>
>                     I have been running tests in which I am
>                     transmitting a signal from one USRP X310 that=E2=80=
=99s
>                     using a UBX 40 daughterboard, and that signal is
>                     being received by another USRP X310 using a UBX 40
>                     daughterboard. I have noticed that when I have the
>                     receiving USRP running with the Gnuradio flowgraph
>                     active, as soon as I start the transmitting USRP=E2=
=80=99s
>                     Gnuradio flowgraph, there is a jump in the noise
>                     floor as it is seen by the receiving USRP, and its
>                     roughly a 14 dB increase. This occurs even if I
>                     have the signal being transmitted muted. Does
>                     anyone have any idea what the source of this added
>                     noise could be? It is something that I need to
>                     mitigate as much as possible for the tests I am
>                     running using these USRPs. Any feedback will be
>                     greatly appreciated, thanks!
>
>                     Best Regards,
>
>                     Jerrid
>
>                     _______________________________________________
>                     USRP-users mailing list --
>                     usrp-users@lists.ettus.com
>                     <mailto:usrp-users@lists.ettus.com>
>                     To unsubscribe send an email to
>                     usrp-users-leave@lists.ettus.com
>                     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------030707030508080909010101
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 03/25/2021 07:01 PM, Jerrid Plymale
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CO6PR19MB4801DB414DF00ABDEDEC561AC6629@CO6PR19MB4801.namprd19=
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
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
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
        <p class=3D"MsoNormal"><span style=3D"color:windowtext">We curren=
tly
            are not using a 30dB attenuator in the coax line, I was not
            aware that one was needed until you brought it up. We are
            looking into getting one ordered at the moment. Could this
            be the cause of the problem?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext">Best
            Regards,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext">Jerrid</s=
pan></p>
      </div>
    </blockquote>
    The problem is that if you transmit directly into an RX with the TX
    power turned up, you can fry the RX.<br>
    <br>
    It also provides a much more realistic simulation of an over-the-air
    link.=C2=A0=C2=A0 ANY receiver that is designed for "Over The Air" re=
ception
    will<br>
    =C2=A0 have a pre-amp that doesn't like to receive power levels above
    about -15dBm (which for over-the-air signals is very very loud).<br>
    <br>
    With the noise figure of your RX (if it isn't damaged already) being
    only about 4dB, it's going to be fairly sensitive to any low-level
    noise<br>
    =C2=A0 that happens to get coupled out of the X3xx electronics when t=
he
    mixer and RF amplifier are "brought up" when a flow-graph is
    started.<br>
    <br>
    Even when you're transmitting with a "0dB" setting, it can still be
    producing up to about -20dBm power output--the attenuator is<br>
    =C2=A0 31.5dB in 0.5dB steps, and the max Pout of the UBX is about +1=
0dBm
    as I recall.=C2=A0 Now, with zeros going to the ADC, the IF port of<b=
r>
    =C2=A0 the mixer isn't going to be seeing much power, but it won't be
    seeing exactly zero power because of the inevitable DAC noise.<br>
    <br>
    It will be instructive to see your results with a 30dB attenuator
    in-line and using the suggested tx_waveforms test.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CO6PR19MB4801DB414DF00ABDEDEC561AC6629@CO6PR19MB4801.namprd19=
.prod.outlook.com"
      type=3D"cite">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>=C2=A0=
</o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b><span style=3D"color:windowtext">Fr=
om:</span></b><span
                style=3D"color:windowtext"> Marcus D Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Thursday, March 25, 2021 3:40 PM<br>
                <b>To:</b> Jerrid Plymale
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jerrid.=
plymale@canyon-us.com">&lt;jerrid.plymale@canyon-us.com&gt;</a><br>
                <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] Strong noise added to
                signal transmitted by X310 with a UBX 40 daughterboard<o:=
p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Could you
          confirm that you=E2=80=99re using at least 30dB of attenuation =
in the
          coax link?<o:p></o:p></p>
        <div>
          <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><br>
            <br>
            <o:p></o:p></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Mar =
25,
              2021, at 6:27 PM, Jerrid Plymale &lt;<a
                moz-do-not-send=3D"true"
                href=3D"mailto:jerrid.plymale@canyon-us.com">jerrid.plyma=
le@canyon-us.com</a>&gt;
              wrote:<o:p></o:p></p>
          </blockquote>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <div>
            <p class=3D"MsoNormal">=EF=BB=BF <span style=3D"color:windowt=
ext"><o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span style=3D"color:windowtext">Yes,
                moving TX out of the RX band has no affect on the noise
                level increase.</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=
</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"color:windowtext">Best
                Regards,</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=
</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"color:windowtext">Jerri=
d</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=
</span><o:p></o:p></p>
            <div>
              <div style=3D"border:none;border-top:solid #E1E1E1
                1.0pt;padding:3.0pt 0in 0in 0in">
                <p class=3D"MsoNormal"><b><span style=3D"color:windowtext=
">From:</span></b><span
                    style=3D"color:windowtext"> Marcus D Leech &lt;<a
                      moz-do-not-send=3D"true"
                      href=3D"mailto:patchvonbraun@gmail.com">patchvonbra=
un@gmail.com</a>&gt;
                    <br>
                    <b>Sent:</b> Thursday, March 25, 2021 2:29 PM<br>
                    <b>To:</b> Jerrid Plymale &lt;<a
                      moz-do-not-send=3D"true"
                      href=3D"mailto:jerrid.plymale@canyon-us.com">jerrid=
.plymale@canyon-us.com</a>&gt;<br>
                    <b>Cc:</b> <a moz-do-not-send=3D"true"
                      href=3D"mailto:USRP-users@lists.ettus.com">USRP-use=
rs@lists.ettus.com</a><br>
                    <b>Subject:</b> Re: [USRP-users] Strong noise added
                    to signal transmitted by X310 with a UBX 40
                    daughterboard</span><o:p></o:p></p>
              </div>
            </div>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">If you move the TX out of band with
              respect to the RX do you still see the noise when the TX
              graph starts?<o:p></o:p></p>
            <div>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            </div>
            <div>
              <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">=C2=A0=
<o:p></o:p></p>
              <div>
                <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal"><br>
                  <br>
                  <br>
                  <o:p></o:p></p>
                <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt=
">
                  <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">O=
n
                    Mar 25, 2021, at 3:57 PM, Jerrid Plymale &lt;<a
                      moz-do-not-send=3D"true"
                      href=3D"mailto:jerrid.plymale@canyon-us.com">jerrid=
.plymale@canyon-us.com</a>&gt;
                    wrote:<o:p></o:p></p>
                </blockquote>
              </div>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <div>
                  <p class=3D"MsoNormal">=EF=BB=BF <o:p></o:p></p>
                  <p class=3D"MsoNormal"><span style=3D"color:windowtext"=
>So
                      I was able to test setting up both USRPs with the
                      same 10 MHz reference signal, and there was no
                      improvement to the noise being added.
                    </span><o:p></o:p></p>
                  <p class=3D"MsoNormal"><span style=3D"color:windowtext"=
>=C2=A0</span><o:p></o:p></p>
                  <p class=3D"MsoNormal"><span style=3D"color:windowtext"=
>If
                      the flowgraph just emits a CW tone, we see a
                      similar response, the added noise is still there
                      and at the same level, we just have the added
                      spike of the CW tone at the frequency we set it
                      to.</span><o:p></o:p></p>
                  <p class=3D"MsoNormal"><span style=3D"color:windowtext"=
>=C2=A0</span><o:p></o:p></p>
                  <p class=3D"MsoNormal"><span style=3D"color:windowtext"=
>Best
                      Regards,</span><o:p></o:p></p>
                  <p class=3D"MsoNormal"><span style=3D"color:windowtext"=
>=C2=A0</span><o:p></o:p></p>
                  <p class=3D"MsoNormal"><span style=3D"color:windowtext"=
>Jerrid
                    </span><o:p></o:p></p>
                  <p class=3D"MsoNormal"><span style=3D"color:windowtext"=
>=C2=A0</span><o:p></o:p></p>
                  <div>
                    <div style=3D"border:none;border-top:solid #E1E1E1
                      1.0pt;padding:3.0pt 0in 0in 0in">
                      <p class=3D"MsoNormal"><b><span
                            style=3D"color:windowtext">From:</span></b><s=
pan
                          style=3D"color:windowtext"> Marcus D Leech &lt;=
<a
                            moz-do-not-send=3D"true"
                            href=3D"mailto:patchvonbraun@gmail.com">patch=
vonbraun@gmail.com</a>&gt;
                          <br>
                          <b>Sent:</b> Wednesday, March 24, 2021 5:01 PM<=
br>
                          <b>To:</b> Jerrid Plymale &lt;<a
                            moz-do-not-send=3D"true"
                            href=3D"mailto:jerrid.plymale@canyon-us.com">=
jerrid.plymale@canyon-us.com</a>&gt;<br>
                          <b>Cc:</b> <a moz-do-not-send=3D"true"
                            href=3D"mailto:USRP-users@lists.ettus.com">US=
RP-users@lists.ettus.com</a><br>
                          <b>Subject:</b> Re: [USRP-users] Strong noise
                          added to signal transmitted by X310 with a UBX
                          40 daughterboard</span><o:p></o:p></p>
                    </div>
                  </div>
                  <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                  <p class=3D"MsoNormal">You don=E2=80=99t need 1PPS for =
this.
                    Having an external high quality reference may help,
                    assuming my guess about your issue is correct. =C2=A0=
<o:p></o:p></p>
                  <div>
                    <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                  </div>
                  <div>
                    <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"=
>What
                      happens if your flow graph just simply emits a Cw
                      tone, using the mute function perhaps tied to a
                      GUI control or some such.=C2=A0<o:p></o:p></p>
                    <div>
                      <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:=
p></p>
                    </div>
                    <div>
                      <p class=3D"MsoNormal"><br>
                        <br>
                        <br>
                        <br>
                        <o:p></o:p></p>
                      <blockquote
                        style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                        <p class=3D"MsoNormal"
                          style=3D"margin-bottom:12.0pt">On Mar 24, 2021,
                          at 7:13 PM, Jerrid Plymale &lt;<a
                            moz-do-not-send=3D"true"
                            href=3D"mailto:jerrid.plymale@canyon-us.com">=
jerrid.plymale@canyon-us.com</a>&gt;
                          wrote:<o:p></o:p></p>
                      </blockquote>
                    </div>
                    <blockquote
                      style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                      <div>
                        <p class=3D"MsoNormal">=EF=BB=BF <o:p></o:p></p>
                        <p class=3D"MsoNormal"><span
                            style=3D"color:windowtext">Ok, if that=E2=80=99=
s the
                            case, would it help to have both USRPs
                            connected to the same 10 MHz reference
                            signal and PPS? In this situation, would I
                            need to provide a secondary source for the
                            PPS, or can that use the 10 Mhz reference as
                            well?</span><o:p></o:p></p>
                        <p class=3D"MsoNormal"><span
                            style=3D"color:windowtext">=C2=A0</span><o:p>=
</o:p></p>
                        <p class=3D"MsoNormal"><span
                            style=3D"color:windowtext">Best Regards,</spa=
n><o:p></o:p></p>
                        <p class=3D"MsoNormal"><span
                            style=3D"color:windowtext">=C2=A0</span><o:p>=
</o:p></p>
                        <p class=3D"MsoNormal"><span
                            style=3D"color:windowtext">Jerrid</span><o:p>=
</o:p></p>
                        <p class=3D"MsoNormal"><span
                            style=3D"color:windowtext">=C2=A0</span><o:p>=
</o:p></p>
                        <div>
                          <div style=3D"border:none;border-top:solid
                            #E1E1E1 1.0pt;padding:3.0pt 0in 0in 0in">
                            <p class=3D"MsoNormal"><b><span
                                  style=3D"color:windowtext">From:</span>=
</b><span
                                style=3D"color:windowtext"> Marcus D.
                                Leech &lt;<a moz-do-not-send=3D"true"
                                  href=3D"mailto:patchvonbraun@gmail.com"=
>patchvonbraun@gmail.com</a>&gt;
                                <br>
                                <b>Sent:</b> Wednesday, March 24, 2021
                                2:23 PM<br>
                                <b>To:</b> Jerrid Plymale &lt;<a
                                  moz-do-not-send=3D"true"
                                  href=3D"mailto:jerrid.plymale@canyon-us=
.com">jerrid.plymale@canyon-us.com</a>&gt;<br>
                                <b>Cc:</b> <a moz-do-not-send=3D"true"
                                  href=3D"mailto:USRP-users@lists.ettus.c=
om">USRP-users@lists.ettus.com</a><br>
                                <b>Subject:</b> Re: [USRP-users] Strong
                                noise added to signal transmitted by
                                X310 with a UBX 40 daughterboard</span><o=
:p></o:p></p>
                          </div>
                        </div>
                        <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                        <div>
                          <p class=3D"MsoNormal">On 03/24/2021 05:10 PM,
                            Jerrid Plymale wrote:<o:p></o:p></p>
                        </div>
                        <blockquote
                          style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                          <p class=3D"MsoNormal">The devices are operatin=
g
                            using direct connection via coax cables.<o:p>=
</o:p></p>
                        </blockquote>
                        <p class=3D"MsoNormal">You absolutely need to put
                          a 30dB attenuator in-line to prevent RX
                          destruction in the case of "ooops" moments
                          from setting the TX<br>
                          =C2=A0 power output too high.<br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <o:p></o:p></p>
                        <blockquote
                          style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          <p class=3D"MsoNormal">The target frequency is
                            1.57542 GHz, and our current bandwidth is 4
                            MHz. We will need to increase the bandwidth
                            to 20 MHz soon for further system
                            development.<o:p></o:p></p>
                          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          <p class=3D"MsoNormal">The TX and RX gain are
                            maxed on the receiving hardware. The TX gain
                            of the transmitting hardware is set to 0, as
                            at max the noise strength increases to ~ 20
                            dB.<o:p></o:p></p>
                          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          <p class=3D"MsoNormal">Attached are images of
                            the FFT provided by the Frequency Sink in
                            Gnuradio. Hopefully these give a visual aid
                            for the problem at hand. When I have the
                            transmitter USRP turned off (image 1), it
                            would seem like the noise floor coming into
                            the USRP is around -94 dB. When the
                            transmitter is turned on and the flowgraph
                            is started with the transmitted signal muted
                            (I am using a python block with code to
                            create custom signals that is then connected
                            to a mute block that then connects to the
                            UHD USRP sink block to be able to mute the
                            signal during runtime), the noise floor
                            increases to around -78 dB.
                            <o:p></o:p></p>
                          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          <p class=3D"MsoNormal">Best Regards,<o:p></o:p>=
</p>
                          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          <p class=3D"MsoNormal">Jerrid=C2=A0 <o:p></o:p>=
</p>
                        </blockquote>
                        <p class=3D"MsoNormal">You are likely just seeing
                          the LO leakage, along with the inevitable
                          phase-noise curve of the LO.<br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <o:p></o:p></p>
                        <blockquote
                          style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          <div>
                            <div style=3D"border:none;border-top:solid
                              #E1E1E1 1.0pt;padding:3.0pt 0in 0in 0in">
                              <p class=3D"MsoNormal"><b>From:</b> Marcus =
D
                                Leech <a moz-do-not-send=3D"true"
                                  href=3D"mailto:patchvonbraun@gmail.com"=
>
                                  &lt;patchvonbraun@gmail.com&gt;</a> <br=
>
                                <b>Sent:</b> Wednesday, March 24, 2021
                                11:58 AM<br>
                                <b>To:</b> Jerrid Plymale <a
                                  moz-do-not-send=3D"true"
                                  href=3D"mailto:jerrid.plymale@canyon-us=
.com">&lt;jerrid.plymale@canyon-us.com&gt;</a><br>
                                <b>Cc:</b> <a moz-do-not-send=3D"true"
                                  href=3D"mailto:USRP-users@lists.ettus.c=
om">USRP-users@lists.ettus.com</a><br>
                                <b>Subject:</b> Re: [USRP-users] Strong
                                noise added to signal transmitted by
                                X310 with a UBX 40 daughterboard<o:p></o:=
p></p>
                            </div>
                          </div>
                          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          <p class=3D"MsoNormal">Is the j B is
                            over-the-air or direct connection?<o:p></o:p>=
</p>
                          <div>
                            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal">What frequency?
                              Bandwidth?<o:p></o:p></p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal">Do you have TX and RX
                              gain turned all the way up?<o:p></o:p></p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal">Can you share your
                              flow-graphs, or minimum<o:p></o:p></p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal"
                              style=3D"margin-bottom:12.0pt">Graphs that
                              show the problem?<o:p></o:p></p>
                            <div>
                              <p class=3D"MsoNormal">Sent from my iPhone<=
o:p></o:p></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <o:p></o:p></p>
                              <blockquote
                                style=3D"margin-top:5.0pt;margin-bottom:5=
.0pt">
                                <p class=3D"MsoNormal"
                                  style=3D"margin-bottom:12.0pt">On Mar
                                  24, 2021, at 12:20 PM, Jerrid Plymale
                                  &lt;<a moz-do-not-send=3D"true"
                                    href=3D"mailto:jerrid.plymale@canyon-=
us.com">jerrid.plymale@canyon-us.com</a>&gt;
                                  wrote:<o:p></o:p></p>
                              </blockquote>
                            </div>
                            <blockquote
                              style=3D"margin-top:5.0pt;margin-bottom:5.0=
pt">
                              <div>
                                <p class=3D"MsoNormal">=EF=BB=BF <o:p></o=
:p></p>
                                <p class=3D"MsoNormal">Hello All,<o:p></o=
:p></p>
                                <p class=3D"MsoNormal">=C2=A0<o:p></o:p><=
/p>
                                <p class=3D"MsoNormal">I have been runnin=
g
                                  tests in which I am transmitting a
                                  signal from one USRP X310 that=E2=80=99=
s using
                                  a UBX 40 daughterboard, and that
                                  signal is being received by another
                                  USRP X310 using a UBX 40
                                  daughterboard. I have noticed that
                                  when I have the receiving USRP running
                                  with the Gnuradio flowgraph active, as
                                  soon as I start the transmitting
                                  USRP=E2=80=99s Gnuradio flowgraph, ther=
e is a
                                  jump in the noise floor as it is seen
                                  by the receiving USRP, and its roughly
                                  a 14 dB increase. This occurs even if
                                  I have the signal being transmitted
                                  muted. Does anyone have any idea what
                                  the source of this added noise could
                                  be? It is something that I need to
                                  mitigate as much as possible for the
                                  tests I am running using these USRPs.
                                  Any feedback will be greatly
                                  appreciated, thanks!<o:p></o:p></p>
                                <p class=3D"MsoNormal">=C2=A0<o:p></o:p><=
/p>
                                <p class=3D"MsoNormal">Best Regards,<o:p>=
</o:p></p>
                                <p class=3D"MsoNormal">=C2=A0<o:p></o:p><=
/p>
                                <p class=3D"MsoNormal">Jerrid<o:p></o:p><=
/p>
                                <p class=3D"MsoNormal">__________________=
_____________________________<br>
                                  USRP-users mailing list -- <a
                                    moz-do-not-send=3D"true"
                                    href=3D"mailto:usrp-users@lists.ettus=
.com">usrp-users@lists.ettus.com</a><br>
                                  To unsubscribe send an email to <a
                                    moz-do-not-send=3D"true"
                                    href=3D"mailto:usrp-users-leave@lists=
.ettus.com">
                                    usrp-users-leave@lists.ettus.com</a><=
o:p></o:p></p>
                              </div>
                            </blockquote>
                          </div>
                        </blockquote>
                        <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      </div>
                    </blockquote>
                  </div>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030707030508080909010101--

--===============2622113910686282951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2622113910686282951==--
