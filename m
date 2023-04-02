Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CECE6D3A3C
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 22:18:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F19F13842E9
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 16:18:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680466707; bh=7Mw1D6jGYHqrHj1rE6XHbgvWEgITBLgdJN/nuq0Gy5c=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EB3uBcw/fsJNqGHEHokf7+2T/38W4RvwiRVxjOnkTRLhfdK7HqCYKcpNS3D4R7Kfv
	 EBlextrOZNzMxyCCXx5Rjr9jQI8VDH+57mUOtnWf32IWaVlQRsA0d9kD2dPeOIfl2d
	 GgHBioFXBuSAFz3aSczV9YiwLgMdac6gM4Q7jQpvzppmDiwdpNSTQOiJXoe2dN1brR
	 DcBFJFQ+TrMFRIite6QWM0RAoeIkThYK/vzU5pB9gcvajH1BcOZwZ51ZGnaga9tnsp
	 rAluc75WE2cHP2SrNea5uqSqaxqbvZb0IwN5x+3j2/7jqnFh8bx8L4F35mkDtkF0ER
	 GexyH1YyMYB3Q==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D1FF383DD5
	for <usrp-users@lists.ettus.com>; Sun,  2 Apr 2023 16:17:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hpx9QL8h";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id t19so26497185qta.12
        for <usrp-users@lists.ettus.com>; Sun, 02 Apr 2023 13:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680466675; x=1683058675;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+nJ0o4e4uQkyMtuGRCmbsiD4Pn3lovFeU+9CSsHk0Xs=;
        b=hpx9QL8h7nj7PHgJFluh+T0sj47NqZN/C4yvsoTmr9HIoaXOjuepkC5qaaHa8gLJY0
         MUnSYek8eHoDDSeYo8mXPavXbejsVJuVvUdIZmYUQ8Vou83a7ovxMztR/0ZhYqZruRsI
         xVe2sHstMZ7rLX7wrZxFv2Z/aBNc4XQNfSL5vZo6TBfGtr52YpD6TxpEG77irQhZd9xj
         l2YG44tA0xS9mvL1oIHl4O8H8ahb6tRkQJ54394l6DSpOYhcCsWeGBPgNX5SgI87WnXf
         eGp7XjpsUwqtg6/TclbxmQsRSXZYLTY71eFNnIvqf/qpUDZAuTVcPFzDRBiJCJpwSWTW
         NM3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680466675; x=1683058675;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+nJ0o4e4uQkyMtuGRCmbsiD4Pn3lovFeU+9CSsHk0Xs=;
        b=Z6MwaVr5nQLZgxFX42ArSepZM4iI2MnmDM64pylf32OKbuibNSYOmaqchYZJdckp8n
         exWRH9oBnUhtnCmrCYsz5GTsJdQlEzKMEagScAAH2du3a0RDU/F8nVmJbDKDB3f3B1Tk
         ntd9xQht1TMsIAFruTgeNv9W0LBhAM8ep+LImy9IN5Sy3nwn1GJCO8hPz2afTebkSLVR
         CGFRcUrSxSmCwdBq80dd/QN5z6pXbqJ0lXG/oeAFSxCEDmTxwOiLuyw2/9FIdWvebt3A
         5lVM9T476qmEaPj15fLk0w1NTV6u1ge6WwDbIvrCpPDc/dRxrEZ5VrHR+5s+kI8AhKG4
         tGNA==
X-Gm-Message-State: AAQBX9eO136Nwxj2oiduoCbR2SeanzJQXNZWMCuAF6QtEX/X/UYCDPkE
	/Q1I6g6Eoi4SFRJNfSFo85E=
X-Google-Smtp-Source: AKy350YOTXu51qXbSzFfjBOahDzaQKt2Ad+/YWwzbrLf0yGqdUqcMKkVNY4+5KPoTXVXc5Twsy3Abw==
X-Received: by 2002:a05:622a:1893:b0:3e6:3c44:e200 with SMTP id v19-20020a05622a189300b003e63c44e200mr17900608qtc.65.1680466674717;
        Sun, 02 Apr 2023 13:17:54 -0700 (PDT)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id c7-20020ac84e07000000b003e3921077d9sm2083376qtw.38.2023.04.02.13.17.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Apr 2023 13:17:54 -0700 (PDT)
Message-ID: <9030645b-863d-ca49-edfc-b8a9dd24fc07@gmail.com>
Date: Sun, 2 Apr 2023 16:17:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
References: <CA+QP_PnWu9XRxLE22CCervTjWKqs0fMJ7EFqnojX3zzyDZ1BHQ@mail.gmail.com>
 <650df62f-683c-925d-330d-be87fa636a33@gmail.com>
 <CA+QP_Pki5XvrwnR_Lzdv+_g4epw1fpeuciFox+3wg9RU7fCrdA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+QP_Pki5XvrwnR_Lzdv+_g4epw1fpeuciFox+3wg9RU7fCrdA@mail.gmail.com>
Message-ID-Hash: CQZINVO54STOBTG45DZWPRHP5YQEH54G
X-Message-ID-Hash: CQZINVO54STOBTG45DZWPRHP5YQEH54G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com, Karunya Choppara <kchoppar@mathworks.com>, Mike McLernon <mmclerno@mathworks.com>, Houman Zarrinkoub <hzarrink@mathworks.com>, Sathish Varala <sathishv@mathworks.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: HELP regarding USRP N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CQZINVO54STOBTG45DZWPRHP5YQEH54G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5679002904048759664=="

This is a multi-part message in MIME format.
--===============5679002904048759664==
Content-Type: multipart/alternative;
 boundary="------------ruNmYv39oMHDKM02zGcSxQRS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ruNmYv39oMHDKM02zGcSxQRS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/04/2023 16:04, Arhum Ahmad wrote:
> Thank you for the response.
>
> Sir, both of my ports are "Gigabit Ethernet," so I was hoping two=20
> N200=C2=A0 might respond on ping in the windows=C2=A0command window=C2=A0=
since I have=20
> changed the IP of both N-200 to "192.168.10.1" and "192.168.10.2". Is=20
> there any way to connect multiple N-series in windows with my setting=20
> or a way to resolve the issue?
>
> If two USRP are recognized by PC, the rest is easy to use in MATLAB.
Your network cards need to be on different IP subnets for this to work.=C2=
=A0=20
This is just standard IP networking stuff.

With both devices on 192.168.10.X, the routing stack in your computer=20
has NO WAY of knowing how to route things, since
 =C2=A0 your cards will both be on the same IP subnet.=C2=A0=C2=A0 I'd ma=
ke the second=20
card on 192.168.20.X, and program your IP address=C2=A0 on
 =C2=A0 the N200 appropriately.


>
>
> On Mon, Apr 3, 2023 at 12:26=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 02/04/2023 13:34, Arhum Ahmad wrote:
>     > Respected sir,
>     >
>     > I am trying to connect multiple USRP N200 simultaneously to the
>     same
>     > system to use in MATLAB. However, It is not recognized by
>     the=C2=A0system.
>     > My PC has 2 ethernet=C2=A0ports (10 and 5 Gbit). N-200 connects v=
ia a
>     > 10Gbit port but not by 5 Gbit. I have changed the IP of N-200,
>     but it
>     > doesn't=C2=A0work. I have tried to use a router to make a local L=
AN to
>     > connect the PC to 2 N-200, but it did not work either. Is there a=
ny
>     > specific way to connect multiple N-200 in the PC and use it in
>     MATLAB
>     > for simultaneous operation?It will be very helpful for my
>     experiment.
>     The N200 ONLY supports 1GBit connections.=C2=A0 It doesn't
>     autoconfigure.=C2=A0 It
>     MUST use a standard 1GIGe connection.
>
>     Each N200 will need to have a unique IP address.=C2=A0=C2=A0=C2=A0 =
Your network
>     ports
>     need to be configured accordingly.
>
>     I'm doubting that your report of a successful connection to a
>     *10Gbit* port
>     =C2=A0=C2=A0 is actually correct.=C2=A0 It must be a *1GiGe* port.
>
>     I can't help with MATLAB.=C2=A0 And indeed, there are only a handfu=
l of
>     MATLAB users on the usrp-users mailing list.
>
>
>
>
>
> --=20
> *Thanks and Regards**
> *
> *Arhum Ahmad*
> Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT Ropar
>
> +91- <tel:+91-7015802356>7974897279 |=C2=A0arhum.19eez0005@iitrpr.ac.in=
=20
> <mailto:2016eez0009@iitrpr.ac.in>
>
> Lab No. 323, Communication Research Lab, J.C.Bose Building
>
>
> *
> /CONFIDENTIALITY NOTICE:=C2=A0The contents of this email message and an=
y=20
> attachments are intended solely for the addressee(s) and may contain=20
> confidential and/or privileged information and may be legally=20
> protected from disclosure. If you are not the intended recipient of=20
> this message or their agent, or if this message has been addressed to=20
> you in error, please immediately alert the sender by reply email and=20
> then delete this message and any attachments. If you are not the=20
> intended recipient, you are hereby notified that any use,=20
> dissemination, copying, or storage of this message or its attachments=20
> is strictly prohibited./
> *=20

--------------ruNmYv39oMHDKM02zGcSxQRS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/04/2023 16:04, Arhum Ahmad wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_Pki5XvrwnR_Lzdv+_g4epw1fpeuciFox+3wg9RU7fCrdA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thank you for the response.
        <div><br>
        </div>
        <div>Sir, both of my ports are "<span
            style=3D"color:rgb(0,0,0);font-family:Roboto,sans-serif;font-=
size:14px">Gigabit
            Ethernet," so I was hoping two N200=C2=A0 might respond on pi=
ng
            in the windows=C2=A0command window=C2=A0since I have changed =
the IP of
            both N-200 to "</span><span
style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:m=
onospace,fixed;font-size:14.7px">192.168.10.1"
            and "</span><span
style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:m=
onospace,fixed;font-size:14.7px">192.168.10.2".
            Is there any way to connect multiple N-series in windows
            with my setting or a way to resolve the issue?</span>
          <div><span
style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:m=
onospace,fixed;font-size:14.7px"><br>
            </span></div>
          <div><span
style=3D"color:rgb(0,0,0);font-family:monospace,fixed;font-size:14.7px;ba=
ckground-color:rgb(251,252,253)">If
              two USRP are recognized by PC, the rest is easy to use in
              MATLAB</span><span
style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:m=
onospace,fixed;font-size:14.7px">.</span></div>
        </div>
      </div>
    </blockquote>
    Your network cards need to be on different IP subnets for this to
    work.=C2=A0 This is just standard IP networking stuff.<br>
    <br>
    With both devices on 192.168.10.X, the routing stack in your
    computer has NO WAY of knowing how to route things, since<br>
    =C2=A0 your cards will both be on the same IP subnet.=C2=A0=C2=A0 I'd=
 make the
    second card on 192.168.20.X, and program your IP address=C2=A0 on<br>
    =C2=A0 the N200 appropriately.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_Pki5XvrwnR_Lzdv+_g4epw1fpeuciFox+3wg9RU7fCrdA@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>
          <div><span
style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:m=
onospace,fixed;font-size:14.7px"><br>
            </span></div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 3, 2023 at
          12:26=E2=80=AFAM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          02/04/2023 13:34, Arhum Ahmad wrote:<br>
          &gt; Respected sir,<br>
          &gt;<br>
          &gt; I am trying to connect multiple USRP N200 simultaneously
          to the same <br>
          &gt; system to use in MATLAB. However, It is not recognized by
          the=C2=A0system. <br>
          &gt; My PC has 2 ethernet=C2=A0ports (10 and 5 Gbit). N-200
          connects via a <br>
          &gt; 10Gbit port but not by 5 Gbit. I have changed the IP of
          N-200, but it <br>
          &gt; doesn't=C2=A0work. I have tried to use a router to make a
          local LAN to <br>
          &gt; connect the PC to 2 N-200, but it did not work either. Is
          there any <br>
          &gt; specific way to connect multiple N-200 in the PC and use
          it in MATLAB <br>
          &gt; for simultaneous operation?It will be very helpful for my
          experiment.<br>
          The N200 ONLY supports 1GBit connections.=C2=A0 It doesn't
          autoconfigure.=C2=A0 It <br>
          MUST use a standard 1GIGe connection.<br>
          <br>
          Each N200 will need to have a unique IP address.=C2=A0=C2=A0=C2=
=A0 Your
          network ports <br>
          need to be configured accordingly.<br>
          <br>
          I'm doubting that your report of a successful connection to a
          *10Gbit* port<br>
          =C2=A0=C2=A0 is actually correct.=C2=A0 It must be a *1GiGe* po=
rt.<br>
          <br>
          I can't help with MATLAB.=C2=A0 And indeed, there are only a
          handful of <br>
          MATLAB users on the usrp-users mailing list.<br>
          <br>
          <br>
          <br>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr">
              <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b
style=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font=
-size:small"><span
                    style=3D"font-family:&quot;times new
                    roman&quot;,serif">Thanks and Regards</span></b><b><b=
r>
                </b></div>
              <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b>Arhum
                  Ahmad</b><br>
                Ph.D. Scholar,=C2=A0Electrical Engineering Department, II=
T
                Ropar</div>
              <table
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;width:47=
0px;margin-top:5px"
                width=3D"470" cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                <tbody>
                  <tr>
                    <td style=3D"color:rgb(141,141,141)">
                      <p style=3D"margin:0px"><span
                          style=3D"display:inline-block"><a
                            href=3D"tel:+91-7015802356"
                            style=3D"color:rgb(141,141,141);font-family:s=
ans-serif"
                            target=3D"_blank" moz-do-not-send=3D"true">+9=
1-</a>7974897279</span>=C2=A0<span
style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.=
19eez0005<span
                          style=3D"display:inline-block"><a
                            href=3D"mailto:2016eez0009@iitrpr.ac.in"
                            style=3D"color:rgb(141,141,141);font-family:s=
ans-serif"
                            target=3D"_blank" moz-do-not-send=3D"true">@i=
itrpr.ac.in</a></span></p>
                    </td>
                  </tr>
                  <tr>
                    <td
                      style=3D"font-family:sans-serif;color:rgb(141,141,1=
41)"><span
                        style=3D"display:inline-block">Lab No. 323,
                        Communication Research Lab, J.C.Bose Building</sp=
an></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <br>
      <b><font size=3D"1"><span><span><span>
                <div>
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div>
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">
                              <div dir=3D"ltr">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr">
                                        <div dir=3D"ltr">
                                          <div dir=3D"ltr">
                                            <div dir=3D"ltr">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">
                                                  <div dir=3D"ltr">
                                                    <div dir=3D"ltr">
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div><span><spa=
n><span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0Th=
e
                                                          contents of
                                                          this email
                                                          message and
                                                          any
                                                          attachments
                                                          are intended
                                                          solely for the
                                                          addressee(s)
                                                          and may
                                                          contain
                                                          confidential
                                                          and/or
                                                          privileged
                                                          information
                                                          and may be
                                                          legally
                                                          protected from
                                                          disclosure. If
                                                          you are not
                                                          the intended
                                                          recipient of
                                                          this message
                                                          or their
                                                          agent, or if
                                                          this message
                                                          has been
                                                          addressed to
                                                          you in error,
                                                          please
                                                          immediately
                                                          alert the
                                                          sender by
                                                          reply email
                                                          and then
                                                          delete this
                                                          message and
                                                          any
                                                          attachments.
                                                          If you are not
                                                          the intended
                                                          recipient, you
                                                          are hereby
                                                          notified that
                                                          any use,
                                                          dissemination,
                                                          copying, or
                                                          storage of
                                                          this message
                                                          or its
                                                          attachments is
                                                          strictly
                                                          prohibited.<spa=
n></span></i></span></span></span></span></div>
                                                          </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </span></span></span></font></b>
    </blockquote>
    <br>
  </body>
</html>

--------------ruNmYv39oMHDKM02zGcSxQRS--

--===============5679002904048759664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5679002904048759664==--
