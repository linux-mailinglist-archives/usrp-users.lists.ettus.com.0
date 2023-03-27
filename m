Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 538A76C99C6
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 04:55:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3443C3844AD
	for <lists+usrp-users@lfdr.de>; Sun, 26 Mar 2023 22:55:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679885729; bh=Ldp3lojgUsrBEMHo4jUUyzXD38wM2Gz7qzW9qrYILxs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JJ5r33X30OmVui13GdY38d+OhCmnN7YjQGz0yye75I9BeTDR5PvF5lVEmWkSpiKH4
	 6GdLQQvynG9ZpY7WoVhBBSnVuz2F/UszRYhLQIsFcWr3pwti8MklIy1aFZidjyWCfO
	 nEh9v4CQHD0oMly/R5DOpGhl2mAZT4RPZmAHMMwKAsuHoTBKaIQ4vTl/N8N1bhpmu/
	 XCO/oGndby8qLlvuvyK8MgAHXkH2b4OQhWVgmcinv2yhmIHCOGxOkFVTtgFgV4DeW0
	 FpeZ0B7GX7uQVA+orLRCOPVS3nb9B7pqmxgR/e6iKs8A4Y28LLNrTi6LtdFRQ1lAO+
	 /e9YNfRrchkBw==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id EE6013844AD
	for <usrp-users@lists.ettus.com>; Sun, 26 Mar 2023 22:55:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UcbEZwfk";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id cn12so3909800qtb.8
        for <usrp-users@lists.ettus.com>; Sun, 26 Mar 2023 19:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679885721;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2fMal8jpb3S78ogZRar/Z8enY6DObdA5Lnk/b2mzS8g=;
        b=UcbEZwfk6mbitufb+Vh3PPH7XQnY/fxTJDMgHP54yBqep/tt+C4W2xO8Ey69UgsPMm
         bSgil8w+w3AS7rLkgZlodwUP+cEOm0peVqa5DpgmIUfcg+Y/QTJQici9bIPOBjZ90UhK
         bUTZwaz5KXBsvCvgM0g01OHZH9WBID9BMinUomJBfqJg+nQahGUfksHGxGwJdMlkBgpm
         zPNjD6EtpCpsAeoESw4+DHbYibAiaLFpb2sksrm16+khbkIW72EnuaxENk2xdsf5YBUC
         Phmr0bjzVwpDnu+GR5cr6qCm8/vr4kkTTJWsTni8IPzdd3sMQ/vrzSkA5k3R6Iun7O7R
         st+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679885721;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2fMal8jpb3S78ogZRar/Z8enY6DObdA5Lnk/b2mzS8g=;
        b=AH6XUpajbaj8iP7D8x5RBDnH5kdtqif46GkwqxhL2ZPEFnebr5gcf2iStQKiwRMFZ4
         kVDFU9cNZ96RQYpr3zosLbojIyZbfbDWzsVib994geqtTbRlYxxwxW4G+Fubzzu/Bdb6
         D2t7wrCTU+UwhL8/EnBGWtDTEG4AP+q+b7qfiw4mZnTL+u/Bk0wl8Oeob2G/Tp+hA+TL
         Huq2JYY6TA4NV8MzMUyQsv9XfLh2VyHr1yjWJ6akfleC+ovPust6O8miCkhX3VVCPFy1
         Y2KsaJgVUtxGLYDBSCjJde8nCzO2wM2vVWNCOI2CUxQwJdFjIhtDnXXs25MFvdwL8+Dn
         mNaQ==
X-Gm-Message-State: AAQBX9f0BeC6thVmg7tvmcgHtUyjLhft52oJcOSieUinX7B7izlLzT+9
	KlBefKx0W65Kyr1z4pAFXJBWFUiqu0I=
X-Google-Smtp-Source: AK7set/zZFYBesoE10DLLRDfSJD1pUSkNIKo2jH2mTFtp+MGv5An669fGWMaSK49WFHgHNMxvO8k1g==
X-Received: by 2002:a05:622a:511:b0:3e1:1fe2:c6b1 with SMTP id l17-20020a05622a051100b003e11fe2c6b1mr18547185qtx.50.1679885721136;
        Sun, 26 Mar 2023 19:55:21 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id h4-20020ac87144000000b003e3837d559asm7161789qtp.88.2023.03.26.19.55.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 19:55:20 -0700 (PDT)
Message-ID: <fb8633c5-ab58-e452-c262-fac380c1656f@gmail.com>
Date: Sun, 26 Mar 2023 22:55:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB91263A201E869804E985BCD9EC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK5UG5wy7MQxJj5bVpHWt4K3gFU=ks=DCdFr1uQQdDJZGA@mail.gmail.com>
 <SJ0PR09MB9126C531C901C0141417CDECEC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK6EiG-7Tif=0QKGec9Mm=G06v+wwGT1hGyWi-3b=s8ZAw@mail.gmail.com>
 <CA+K5gze-WqPNY6a8hRudbRqLhPfN8POGSUHnaRVrkW+VpOxxqQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+K5gze-WqPNY6a8hRudbRqLhPfN8POGSUHnaRVrkW+VpOxxqQ@mail.gmail.com>
Message-ID-Hash: XK6VQXPQETX3R6ZTISFUJ6EIO625VMSQ
X-Message-ID-Hash: XK6VQXPQETX3R6ZTISFUJ6EIO625VMSQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wideband IQ Daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XK6VQXPQETX3R6ZTISFUJ6EIO625VMSQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3638959905469232324=="

This is a multi-part message in MIME format.
--===============3638959905469232324==
Content-Type: multipart/alternative;
 boundary="------------G0oVMTItqXFaNPUYbvXNiHuS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------G0oVMTItqXFaNPUYbvXNiHuS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/03/2023 22:50, Robert McGwier wrote:
> Can the =C2=A0existing firmware support that bandwidth? The 10Gbps Ethe=
rnet=20
> can but I am not sure about the rest of the USRP. I own two of them=20
> and have never tried to do that.
>
> Bob
You can (theoretically) stream 200Msps from an X310 over 10GiGe. Getting=20
a 'pooter that can sustain that rate for
 =C2=A0 any length of time is.....challenging.


>
>
> On Wed, Mar 22, 2023 at 9:58 AM Brian Padalino <bpadalino@gmail.com>=20
> wrote:
>
>     You're right - I completely missed that part of the email.
>
>     My apologies.
>
>     Brian
>
>     On Tue, Mar 21, 2023 at 7:12=E2=80=AFPM Eugene Grayver
>     <eugene.grayver@aero.org> wrote:
>
>         Yes, as stated in the original post 'Basic-RX with a minimum
>         of 1 MHz'.=C2=A0 The DC is cutoff by the balun on the basicRX
>         making it unsuitable for IQ.
>
>         ________________________
>
>         Eugene Grayver, Ph.D.
>         Aerospace Corp., Principal Engineer
>         Tel: 310.336.1274
>         ________________________
>
>
>         ---------------------------------------------------------------=
---------
>         *From:* Brian Padalino <bpadalino@gmail.com>
>         *Sent:* Tuesday, March 21, 2023 3:18 PM
>         *To:* Eugene Grayver <eugene.grayver@aero.org>
>         *Cc:* usrp-users <usrp-users@lists.ettus.com>
>         *Subject:* Re: [USRP-users] Wideband IQ Daughterboard
>         On Tue, Mar 21, 2023 at 6:12=E2=80=AFPM Eugene Grayver
>         <eugene.grayver@aero.org> wrote:
>
>             Hello,
>
>             I want to use an external IQ mixer with an external LO.=C2=A0
>             My signal is 160 MHz wide, which fits nicely into the
>             nominal complex 200 MHz Nyquist of the X310.=C2=A0
>             Unfortunately the only daughterboards for direct access to
>             the ADCs are LFRX which maxes out at 30 MHz, and the
>             Basic-RX with a minimum of 1 MHZ.
>
>             I am thinking of spinning a custom daughter board derived
>             from LFRX with a wideband differential driver such as
>             https://www.analog.com/media/en/technical-documentation/dat=
a-sheets/6406fc.pdf=C2=A0or
>             alternatively just replacing the chip on an LFRX since
>             these appear to be footprint compatible.
>
>             Separately, I was looking at LFTX schematics and the part
>             # for the amplifier is not specified.=C2=A0 Can somebody at
>             Ettus/NI save me some time and lookup that part #.
>
>             Comments?
>
>
>         Have you considered the BasicRX?
>
>         https://www.ettus.com/all-products/basicrx/
>         https://files.ettus.com/schematics/basic_dbs/BasicRX.pdf
>
>         Brian
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> --=20
> Dr. Robert W McGwier, Ph.D.
> Affiliated Faculty, Virginia Tech
> Affiliated Faculty, University of Scranton
> Former ARDC Member of Board
> N4HY: ARRL, TAPR, AMSAT, EARC, CSVHFS
> Sky: AAVSO, Sky360, explorescu.org <http://explorescu.org>, Skyscrapers
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------G0oVMTItqXFaNPUYbvXNiHuS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/03/2023 22:50, Robert McGwier
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+K5gze-WqPNY6a8hRudbRqLhPfN8POGSUHnaRVrkW+VpOxxqQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Can the =C2=A0existing firmware support that band=
width?
        The 10Gbps Ethernet can but I am not sure about the rest of the
        USRP. I own two of them and have never tried to do that.=C2=A0</d=
iv>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">Bob</div>
    </blockquote>
    You can (theoretically) stream 200Msps from an X310 over 10GiGe.=C2=A0
    Getting a 'pooter that can sustain that rate for<br>
    =C2=A0 any length of time is.....challenging.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+K5gze-WqPNY6a8hRudbRqLhPfN8POGSUHnaRVrkW+VpOxxqQ@mail.gmai=
l.com">
      <div dir=3D"auto"><br>
      </div>
      <div><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 22, 2023 at 9=
:58
            AM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">bp=
adalino@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div dir=3D"ltr">You're right - I completely missed that part
              of the email.
              <div><br>
              </div>
              <div>My apologies.</div>
            </div>
            <div dir=3D"ltr">
              <div><br>
                Brian</div>
            </div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 21, 2023 =
at
                7:12=E2=80=AFPM Eugene Grayver &lt;<a
                  href=3D"mailto:eugene.grayver@aero.org" target=3D"_blan=
k"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">eugene.grayver@aero.org</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div>
                  <div dir=3D"ltr">
                    <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Yes,
                      as stated in the original post '<span
                        style=3D"background-color:rgb(255,255,255);displa=
y:inline">Basic-RX
                        with a minimum of 1 MHz'.=C2=A0 The DC is cutoff =
by
                        the balun on the basicRX making it unsuitable
                        for IQ.</span></div>
                    <div>
                      <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)"><br>
                      </div>
                      <div
                        id=3D"m_-3752729570845385827m_6627413906338424829=
Signature">
                        <div>
                          <div
                            id=3D"m_-3752729570845385827m_662741390633842=
4829divtagdefaultwrapper"
                            dir=3D"ltr"
style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;=
font-size:12pt;background-color:rgb(255,255,255)">
                            <p><span
                                style=3D"color:black;font-family:Arial,sa=
ns-serif;font-size:10pt"><span
id=3D"m_-3752729570845385827m_6627413906338424829ms-rterangepaste-start">=
</span><span
style=3D"color:rgb(0,0,0);font-family:Arial,sans-serif;font-size:13.33px"=
>________________________</span><span
id=3D"m_-3752729570845385827m_6627413906338424829ms-rterangepaste-end"></=
span><br>
                              </span></p>
                            <p><span
                                style=3D"color:black;font-family:Arial,sa=
ns-serif;font-size:10pt">Eugene
                                Grayver, Ph.D.<br>
                                Aerospace Corp., Principal Engineer<br>
                                Tel: 310.336.1274<br>
                                ________________________</span><br>
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)"><br>
                    </div>
                    <hr style=3D"display:inline-block;width:98%">
                    <div
                      id=3D"m_-3752729570845385827m_6627413906338424829di=
vRplyFwdMsg"
                      dir=3D"ltr"><font style=3D"font-size:11pt"
                        face=3D"Calibri, sans-serif" color=3D"#000000"><b=
>From:</b>
                        Brian Padalino &lt;<a
                          href=3D"mailto:bpadalino@gmail.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">bpadalino@gmail=
.com</a>&gt;<br>
                        <b>Sent:</b> Tuesday, March 21, 2023 3:18 PM<br>
                        <b>To:</b> Eugene Grayver &lt;<a
                          href=3D"mailto:eugene.grayver@aero.org"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">eugene.grayver@=
aero.org</a>&gt;<br>
                        <b>Cc:</b> usrp-users &lt;<a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">usrp-users@list=
s.ettus.com</a>&gt;<br>
                        <b>Subject:</b> Re: [USRP-users] Wideband IQ
                        Daughterboard</font>
                      <div>=C2=A0</div>
                    </div>
                    <div>
                      <div dir=3D"ltr">
                        <div dir=3D"ltr">On Tue, Mar 21, 2023 at 6:12=E2=80=
=AFPM
                          Eugene Grayver &lt;<a
                            href=3D"mailto:eugene.grayver@aero.org"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">eugene.grayve=
r@aero.org</a>&gt;
                          wrote:<br>
                        </div>
                        <div>
                          <blockquote style=3D"margin:0px 0px 0px
                            0.8ex;border-left:1px solid
                            rgb(204,204,204);padding-left:1ex">
                            <div>
                              <div dir=3D"ltr">
                                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Hello,</div>
                                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                                </div>
                                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">I
                                  want to use an external IQ mixer with
                                  an external LO.=C2=A0 My signal is 160 =
MHz
                                  wide, which fits nicely into the
                                  nominal complex 200 MHz Nyquist of the
                                  X310.=C2=A0 Unfortunately the only
                                  daughterboards for direct access to
                                  the ADCs are LFRX which maxes out at
                                  30 MHz, and the Basic-RX with a
                                  minimum of 1 MHZ.</div>
                                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                                </div>
                                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">I
                                  am thinking of spinning a custom
                                  daughter board derived from LFRX with
                                  a wideband differential driver such
                                  as=C2=A0<a
href=3D"https://www.analog.com/media/en/technical-documentation/data-shee=
ts/6406fc.pdf"
id=3D"m_-3752729570845385827m_6627413906338424829x_m_29364865378333502LPl=
nk885883"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">https=
://www.analog.com/media/en/technical-documentation/data-sheets/6406fc.pdf=
</a>=C2=A0or
                                  alternatively just replacing the chip
                                  on an LFRX since these appear to be
                                  footprint compatible.=C2=A0</div>
                                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                                </div>
                                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Separately,
                                  I was looking at LFTX schematics and
                                  the part # for the amplifier is not
                                  specified.=C2=A0 Can somebody at Ettus/=
NI
                                  save me some time and lookup that part
                                  #.</div>
                                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                                </div>
                                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Comments?</div>
                              </div>
                            </div>
                          </blockquote>
                          <div><br>
                          </div>
                          <div>Have you considered the BasicRX?</div>
                          <div><br>
                          </div>
                          <div>=C2=A0=C2=A0<a
                              href=3D"https://www.ettus.com/all-products/=
basicrx/"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">https://www=
.ettus.com/all-products/basicrx/</a></div>
                          <div>=C2=A0=C2=A0<a
                              href=3D"https://files.ettus.com/schematics/=
basic_dbs/BasicRX.pdf"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">https://fil=
es.ettus.com/schematics/basic_dbs/BasicRX.pdf</a></div>
                          <div><br>
                          </div>
                          <div>Brian</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </blockquote>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </blockquote>
        </div>
      </div>
      -- <br>
      <div dir=3D"ltr" class=3D"gmail_signature"
        data-smartmail=3D"gmail_signature">
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
                                  <div dir=3D"ltr" style=3D"font-size:sma=
ll"><span
                                      style=3D"color:rgb(80,0,80)">Dr.
                                      Robert W McGwier, Ph.D.</span><br
                                      style=3D"color:rgb(80,0,80)">
                                    Affiliated=C2=A0<span
                                      style=3D"color:rgb(80,0,80)">Facult=
y,
                                      Virginia Tech</span></div>
                                  <div dir=3D"ltr" style=3D"font-size:sma=
ll">Affiliated
                                    Faculty, University of Scranton<br
                                      style=3D"color:rgb(80,0,80)">
                                    <span style=3D"color:rgb(80,0,80)">Fo=
rmer
                                      ARDC Member of Board</span><br
                                      style=3D"color:rgb(80,0,80)">
                                    <span style=3D"color:rgb(80,0,80)">N4=
HY:
                                      ARRL, TAPR, AMSAT, EARC, CSVHFS</sp=
an><br
                                      style=3D"color:rgb(80,0,80)">
                                    <span style=3D"color:rgb(80,0,80)">Sk=
y:
                                      AAVSO, Sky360, <a
                                        href=3D"http://explorescu.org"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">explores=
cu.org</a>,
                                      Skyscrapers</span><br>
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
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
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

--------------G0oVMTItqXFaNPUYbvXNiHuS--

--===============3638959905469232324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3638959905469232324==--
