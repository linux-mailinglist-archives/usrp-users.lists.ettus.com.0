Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F4A6CB173
	for <lists+usrp-users@lfdr.de>; Tue, 28 Mar 2023 00:11:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5447B3845B9
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 18:11:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679955097; bh=3zd/EVKxNeinrcgqR94t7ubjbaSIjxnVa3Bui+1cBfQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=N+joLOWisvZdZYjqhV2nw3CyxuRb1ISB6ugKskQksIebw1+xU4lOocwyqs3Y4Ct13
	 SdU58C3nnqsKCmw2qW80tIblUa/6SezLOd9OuqGqhopJtcSHgyTNeO+3PPGK0RS13P
	 FzZ+2fPx6rM9pl7r7tOyyabFFml7JZy11ozmeKk+BZo6jNLuIYCz7lWj/2BX8O7NsB
	 AUahVB/r5tPSk4cm9nnJhSQb7hYc7KjsoW2RNR1iNkdg23mCHfQgAiZYNu/a53ShjL
	 Jufg9FlYoWRgSmLxp/dJCDOZ6osscTek9z+TqndduR6zBFq2A++jvj0Dv8MMKpdI4R
	 I6mGBMzQaWfqg==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id E1DD83848E9
	for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 18:10:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DIpWmhQk";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id cj15so2609014qtb.5
        for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 15:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679955039;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GIETwWWgF2Rfb8y3cBHzeDHR+yJ6fQOjnaMSkCLhNWQ=;
        b=DIpWmhQkMQlrUefNslmPhqip70N1YaxSIuRyGeN3EkciWQwkXFsTD9hFWWgxLk0+Xh
         S+td1C/JiucIrlAGy96Nvhgk8rrBPHEOZnDTCj8tMDCPj8c5GlqDgidobQpuNYBW2j3F
         /ojuz15W4oJ3Gi271UhnMscVENIJaAzXdXV/d/+C3+hgxFiTd3JJBFaEAi7VlLubUd8B
         dRvx5EAKgs+I3QDMARm0/S/JILmmJi4fJHIRYBQDUksDzE6LJATPkVZ0vY6VtxUrjQ4O
         bcY48JDpRhUUfEoNwBn2BpqteIEEm0cD5PG0vb3+3A/xsE9w9TG9T5exJhUh5d/8mQnQ
         RhPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679955039;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GIETwWWgF2Rfb8y3cBHzeDHR+yJ6fQOjnaMSkCLhNWQ=;
        b=GvL6KPtpNt0/Qok1fHsv0aROb9lIx+du2tZ16GX+zkgAHGqKpBaCwwjSrvHDShFE5O
         imUXJqnHSrXh/At9FifZ7h9FoC/Hbbe2DWTIAglKO9TlFDD+Er4kzlbN5do1/swpZXK1
         ids2wW2w0bLpceikSQVZqqtKvdeOMtdWp/EloGuutXbD2+PvOFFlcvezC4mIySN3hkkX
         zIcTzzKi7oGwFdM5IYEngBtQeNTYXYHD/fl9cElwKbOZ4tsVA4poD6+EesAqrJ/sPseh
         +XBtQxDkDBshUhHkmQiMLGkXVKVIQfroQlZlCZ+6Sx2lO5NMP8ScsIQjU9J/IYAXw3GH
         QtVQ==
X-Gm-Message-State: AO0yUKV8pEXJ5cWbusGnNTxl/Yig+HW9YezEBbOMjvrpifBk1meJ9uZh
	c7r/wdnmHybnTJF6n9n4qkBToDjfrBM=
X-Google-Smtp-Source: AK7set/zJwCcyN8AzA+WQE9SdkqifWVD1zhDDH8B74VGJ6aZvlCQsEODQ/3mThFHXLC7VHLy/He3tw==
X-Received: by 2002:ac8:7d92:0:b0:3bf:c407:10ca with SMTP id c18-20020ac87d92000000b003bfc40710camr23477519qtd.10.1679955038985;
        Mon, 27 Mar 2023 15:10:38 -0700 (PDT)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id 78-20020a370551000000b0074236d3a149sm7977884qkf.92.2023.03.27.15.10.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 15:10:38 -0700 (PDT)
Message-ID: <1080646d-4534-e454-f6f3-e2eed246ed05@gmail.com>
Date: Mon, 27 Mar 2023 18:10:37 -0400
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
 <SJ0PR09MB9126F7B69493DCF3A0A4B508EC8B9@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAB__hTQwaaQSNg198NT7KQ_qMVrPNqicaqyxcepQWAwgnkknxw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQwaaQSNg198NT7KQ_qMVrPNqicaqyxcepQWAwgnkknxw@mail.gmail.com>
Message-ID-Hash: UTWIUZYD2R6SDP5MUJ6SSOXZYPFMJWKQ
X-Message-ID-Hash: UTWIUZYD2R6SDP5MUJ6SSOXZYPFMJWKQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wideband IQ Daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UTWIUZYD2R6SDP5MUJ6SSOXZYPFMJWKQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5537602786485470632=="

This is a multi-part message in MIME format.
--===============5537602786485470632==
Content-Type: multipart/alternative;
 boundary="------------BDRMX0wGR96EskPd2fqbzvKw"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BDRMX0wGR96EskPd2fqbzvKw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/03/2023 16:39, Rob Kossler via USRP-users wrote:
> Hi Eugene,
> I don't know why the basic Rx has a lower frequency listed.=C2=A0 It se=
ems=20
> inconsistent with other notes such as the following found here=20
> <https://kb.ettus.com/Selecting_a_RF_Daughterboard>
>
>     Some USRP radio users elect to use an external front end providing
>     upconversion, downconversion, amplification and filtering
>     functionality. In these cases, the frontend often outputs an
>     intermediate frequency (IF). It is also possible for the frontend
>     to provide an analog, quadrature interface. In either case the
>     BasicRX/BasicTX and LFRX/LFTX daughterboards are good candidates,
>     as they provide a unity gain interface to the ADC(s) and DAC(s) of
>     the USRP hardware.
>
> I have not tried so I can't confirm if it will work. I can only say=20
> that it was my understanding that the Basic Rx could be used for your=20
> specific application.
> Rob
>
The datasheet for the input balun transformer:

https://www.minicircuits.com/pdfs/ADT1-1WT.pdf

Would seem to indicate that the quoted "1MHz" bottom-end was a *bit*=20
conservative but not horrifically so.=C2=A0 I'd guess that at
 =C2=A0 100kHz the insertion loss might be as much as 2dB.

The series coupling on the balanced side of the transformer probably has=20
some loss below the stated 1MHz as well.


> On Mon, Mar 27, 2023 at 12:08=E2=80=AFPM Eugene Grayver=20
> <eugene.grayver@aero.org> wrote:
>
>     Yes, as evidenced by UBX-160.=C2=A0 X310 can stream 200 Msps comple=
x,
>     which is sufficient for 160 MHz of BW.
>
>     ________________________
>
>     Eugene Grayver, Ph.D.
>     Aerospace Corp., Principal Engineer
>     Tel: 310.336.1274
>     ________________________
>
>     -------------------------------------------------------------------=
-----
>     *From:* Robert McGwier <rwmcgwier@gmail.com>
>     *Sent:* Sunday, March 26, 2023 7:50 PM
>     *To:* Brian Padalino <bpadalino@gmail.com>
>     *Cc:* Eugene Grayver <eugene.grayver@aero.org>; usrp-users
>     <usrp-users@lists.ettus.com>
>     *Subject:* Re: [USRP-users] Re: Wideband IQ Daughterboard
>     Can the =C2=A0existing firmware support that bandwidth? The 10Gbps
>     Ethernet can but I am not sure about the rest of the USRP. I own
>     two of them and have never tried to do that.
>
>     Bob
>
>
>     On Wed, Mar 22, 2023 at 9:58 AM Brian Padalino
>     <bpadalino@gmail.com> wrote:
>
>         You're right - I completely missed that part of the email.
>
>         My apologies.
>
>         Brian
>
>         On Tue, Mar 21, 2023 at 7:12=E2=80=AFPM Eugene Grayver
>         <eugene.grayver@aero.org> wrote:
>
>             Yes, as stated in the original post 'Basic-RX with a
>             minimum of 1 MHz'.=C2=A0 The DC is cutoff by the balun on t=
he
>             basicRX making it unsuitable for IQ.
>
>             ________________________
>
>             Eugene Grayver, Ph.D.
>             Aerospace Corp., Principal Engineer
>             Tel: 310.336.1274
>             ________________________
>
>
>             -----------------------------------------------------------=
-------------
>             *From:* Brian Padalino <bpadalino@gmail.com>
>             *Sent:* Tuesday, March 21, 2023 3:18 PM
>             *To:* Eugene Grayver <eugene.grayver@aero.org>
>             *Cc:* usrp-users <usrp-users@lists.ettus.com>
>             *Subject:* Re: [USRP-users] Wideband IQ Daughterboard
>             On Tue, Mar 21, 2023 at 6:12=E2=80=AFPM Eugene Grayver
>             <eugene.grayver@aero.org> wrote:
>
>                 Hello,
>
>                 I want to use an external IQ mixer with an external
>                 LO.=C2=A0 My signal is 160 MHz wide, which fits nicely =
into
>                 the nominal complex 200 MHz Nyquist of the X310.=C2=A0
>                 Unfortunately the only daughterboards for direct
>                 access to the ADCs are LFRX which maxes out at 30 MHz,
>                 and the Basic-RX with a minimum of 1 MHZ.
>
>                 I am thinking of spinning a custom daughter board
>                 derived from LFRX with a wideband differential driver
>                 such as
>                 https://www.analog.com/media/en/technical-documentation=
/data-sheets/6406fc.pdf=C2=A0or
>                 alternatively just replacing the chip on an LFRX since
>                 these appear to be footprint compatible.
>
>                 Separately, I was looking at LFTX schematics and the
>                 part # for the amplifier is not specified.=C2=A0 Can
>                 somebody at Ettus/NI save me some time and lookup that
>                 part #.
>
>                 Comments?
>
>
>             Have you considered the BasicRX?
>
>             https://www.ettus.com/all-products/basicrx/
>             https://files.ettus.com/schematics/basic_dbs/BasicRX.pdf
>
>             Brian
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>
>     --=20
>     Dr. Robert W McGwier, Ph.D.
>     Affiliated Faculty, Virginia Tech
>     Affiliated Faculty, University of Scranton
>     Former ARDC Member of Board
>     N4HY: ARRL, TAPR, AMSAT, EARC, CSVHFS
>     Sky: AAVSO, Sky360, explorescu.org <http://explorescu.org>,
>     Skyscrapers
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------BDRMX0wGR96EskPd2fqbzvKw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/03/2023 16:39, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQwaaQSNg198NT7KQ_qMVrPNqicaqyxcepQWAwgnkknxw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">Hi Eugene,
          <div>I don't know why the basic Rx has a lower frequency
            listed.=C2=A0 It seems inconsistent with other notes such as =
the
            following found <a
              href=3D"https://kb.ettus.com/Selecting_a_RF_Daughterboard"
              moz-do-not-send=3D"true">here</a></div>
          <blockquote style=3D"margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div><font color=3D"#0000ff">Some USRP radio users elect to
                use an external front end providing upconversion,
                downconversion, amplification and filtering
                functionality. In these cases, the frontend often
                outputs an intermediate frequency (IF). It is also
                possible for the frontend to provide an analog,
                quadrature interface. In either case the BasicRX/BasicTX
                and LFRX/LFTX daughterboards are good candidates, as
                they provide a unity gain interface to the ADC(s) and
                DAC(s) of the USRP hardware.</font></div>
          </blockquote>
          <div>I have not tried so I can't confirm if it will work. I
            can only say that it was my understanding that the Basic Rx
            could be used for your specific application.</div>
          <div>Rob</div>
        </div>
        <br>
      </div>
    </blockquote>
    The datasheet for the input balun transformer:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://www.minicircuits.c=
om/pdfs/ADT1-1WT.pdf">https://www.minicircuits.com/pdfs/ADT1-1WT.pdf</a><=
br>
    <br>
    Would seem to indicate that the quoted "1MHz" bottom-end was a *bit*
    conservative but not horrifically so.=C2=A0 I'd guess that at<br>
    =C2=A0 100kHz the insertion loss might be as much as 2dB.<br>
    <br>
    The series coupling on the balanced side of the transformer probably
    has some loss below the stated 1MHz as well.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQwaaQSNg198NT7KQ_qMVrPNqicaqyxcepQWAwgnkknxw@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 27, 2023 at
            12:08=E2=80=AFPM Eugene Grayver &lt;<a
              href=3D"mailto:eugene.grayver@aero.org"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">eu=
gene.grayver@aero.org</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div class=3D"msg-847810175369153456">
              <div dir=3D"ltr">
                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Yes,
                  as evidenced by UBX-160.=C2=A0 X310 can stream 200 Msps
                  complex, which is sufficient for 160 MHz of BW.</div>
                <div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)"><br>
                  </div>
                  <div id=3D"m_-847810175369153456Signature">
                    <div>
                      <div
                        id=3D"m_-847810175369153456divtagdefaultwrapper"
                        dir=3D"ltr"
style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;=
font-size:12pt;background-color:rgb(255,255,255)">
                        <p><span
                            style=3D"color:black;font-family:Arial,sans-s=
erif;font-size:10pt"><span
id=3D"m_-847810175369153456ms-rterangepaste-start"></span><span
                              style=3D"color:rgb(0,0,0);font-family:Arial=
,sans-serif;font-size:13.33px">________________________</span><span
id=3D"m_-847810175369153456ms-rterangepaste-end"></span><br>
                          </span></p>
                        <p><span
                            style=3D"color:black;font-family:Arial,sans-s=
erif;font-size:10pt">Eugene
                            Grayver, Ph.D.<br>
                            Aerospace Corp., Principal Engineer<br>
                            Tel: 310.336.1274<br>
                            ________________________</span><br>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <hr style=3D"display:inline-block;width:98%">
                <div id=3D"m_-847810175369153456divRplyFwdMsg" dir=3D"ltr=
"><font
                    style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
                    color=3D"#000000"><b>From:</b> Robert McGwier &lt;<a
                      href=3D"mailto:rwmcgwier@gmail.com" target=3D"_blan=
k"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">rwmcgwier@gmail.com=
</a>&gt;<br>
                    <b>Sent:</b> Sunday, March 26, 2023 7:50 PM<br>
                    <b>To:</b> Brian Padalino &lt;<a
                      href=3D"mailto:bpadalino@gmail.com" target=3D"_blan=
k"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">bpadalino@gmail.com=
</a>&gt;<br>
                    <b>Cc:</b> Eugene Grayver &lt;<a
                      href=3D"mailto:eugene.grayver@aero.org"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">eugene.grayver@aero=
.org</a>&gt;;
                    usrp-users &lt;<a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>&gt;<br>
                    <b>Subject:</b> Re: [USRP-users] Re: Wideband IQ
                    Daughterboard</font>
                  <div>=C2=A0</div>
                </div>
                <div>
                  <div dir=3D"auto">Can the =C2=A0existing firmware suppo=
rt
                    that bandwidth? The 10Gbps Ethernet can but I am not
                    sure about the rest of the USRP. I own two of them
                    and have never tried to do that.=C2=A0</div>
                  <div dir=3D"auto"><br>
                  </div>
                  <div dir=3D"auto">Bob</div>
                  <div dir=3D"auto"><br>
                  </div>
                  <div><br>
                    <div>
                      <div dir=3D"ltr">On Wed, Mar 22, 2023 at 9:58 AM
                        Brian Padalino &lt;<a
                          href=3D"mailto:bpadalino@gmail.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">bpadalino@gmail=
.com</a>&gt;
                        wrote:<br>
                      </div>
                      <blockquote style=3D"margin:0px 0px 0px
                        0.8ex;border-left:1px solid
                        rgb(204,204,204);padding-left:1ex">
                        <div dir=3D"ltr">You're right - I completely
                          missed that part of the email.
                          <div><br>
                          </div>
                          <div>My apologies.</div>
                        </div>
                        <div dir=3D"ltr">
                          <div><br>
                            Brian</div>
                        </div>
                        <br>
                        <div>
                          <div dir=3D"ltr">On Tue, Mar 21, 2023 at 7:12=E2=
=80=AFPM
                            Eugene Grayver &lt;<a
                              href=3D"mailto:eugene.grayver@aero.org"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">eugene.gray=
ver@aero.org</a>&gt;
                            wrote:<br>
                          </div>
                          <blockquote style=3D"margin:0px 0px 0px
                            0.8ex;border-left:1px solid
                            rgb(204,204,204);padding-left:1ex">
                            <div>
                              <div dir=3D"ltr">
                                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Yes,
                                  as stated in the original post '<span
style=3D"background-color:rgb(255,255,255);display:inline">Basic-RX with =
a
                                    minimum of 1 MHz'.=C2=A0 The DC is cu=
toff
                                    by the balun on the basicRX making
                                    it unsuitable for IQ.</span></div>
                                <div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)"><br>
                                  </div>
                                  <div
id=3D"m_-847810175369153456x_m_-3752729570845385827m_6627413906338424829S=
ignature">
                                    <div>
                                      <div
id=3D"m_-847810175369153456x_m_-3752729570845385827m_6627413906338424829d=
ivtagdefaultwrapper"
                                        dir=3D"ltr"
style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;=
font-size:12pt;background-color:rgb(255,255,255)">
                                        <p><span
                                            style=3D"color:black;font-fam=
ily:Arial,sans-serif;font-size:10pt"><span
id=3D"m_-847810175369153456x_m_-3752729570845385827m_6627413906338424829m=
s-rterangepaste-start"></span><span
style=3D"color:rgb(0,0,0);font-family:Arial,sans-serif;font-size:13.33px"=
>________________________</span><span
id=3D"m_-847810175369153456x_m_-3752729570845385827m_6627413906338424829m=
s-rterangepaste-end"></span><br>
                                          </span></p>
                                        <p><span
                                            style=3D"color:black;font-fam=
ily:Arial,sans-serif;font-size:10pt">Eugene
                                            Grayver, Ph.D.<br>
                                            Aerospace Corp., Principal
                                            Engineer<br>
                                            Tel: 310.336.1274<br>
                                            ________________________</spa=
n><br>
                                        </p>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)"><br>
                                </div>
                                <hr
                                  style=3D"display:inline-block;width:98%=
">
                                <div
id=3D"m_-847810175369153456x_m_-3752729570845385827m_6627413906338424829d=
ivRplyFwdMsg"
                                  dir=3D"ltr"><font style=3D"font-size:11=
pt"
                                    face=3D"Calibri, sans-serif"
                                    color=3D"#000000"><b>From:</b> Brian
                                    Padalino &lt;<a
                                      href=3D"mailto:bpadalino@gmail.com"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true"
                                      class=3D"moz-txt-link-freetext">bpa=
dalino@gmail.com</a>&gt;<br>
                                    <b>Sent:</b> Tuesday, March 21, 2023
                                    3:18 PM<br>
                                    <b>To:</b> Eugene Grayver &lt;<a
                                      href=3D"mailto:eugene.grayver@aero.=
org"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true"
                                      class=3D"moz-txt-link-freetext">eug=
ene.grayver@aero.org</a>&gt;<br>
                                    <b>Cc:</b> usrp-users &lt;<a
                                      href=3D"mailto:usrp-users@lists.ett=
us.com"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true"
                                      class=3D"moz-txt-link-freetext">usr=
p-users@lists.ettus.com</a>&gt;<br>
                                    <b>Subject:</b> Re: [USRP-users]
                                    Wideband IQ Daughterboard</font>
                                  <div>=C2=A0</div>
                                </div>
                                <div>
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">On Tue, Mar 21, 2023
                                      at 6:12=E2=80=AFPM Eugene Grayver &=
lt;<a
                                        href=3D"mailto:eugene.grayver@aer=
o.org"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true"
                                        class=3D"moz-txt-link-freetext">e=
ugene.grayver@aero.org</a>&gt;
                                      wrote:<br>
                                    </div>
                                    <div>
                                      <blockquote style=3D"margin:0px 0px
                                        0px 0.8ex;border-left:1px solid
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
                                              want to use an external IQ
                                              mixer with an external
                                              LO.=C2=A0 My signal is 160 =
MHz
                                              wide, which fits nicely
                                              into the nominal complex
                                              200 MHz Nyquist of the
                                              X310.=C2=A0 Unfortunately t=
he
                                              only daughterboards for
                                              direct access to the ADCs
                                              are LFRX which maxes out
                                              at 30 MHz, and the
                                              Basic-RX with a minimum of
                                              1 MHZ.</div>
                                            <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                                            </div>
                                            <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">I
                                              am thinking of spinning a
                                              custom daughter board
                                              derived from LFRX with a
                                              wideband differential
                                              driver such as=C2=A0<a
href=3D"https://www.analog.com/media/en/technical-documentation/data-shee=
ts/6406fc.pdf"
id=3D"m_-847810175369153456x_m_-3752729570845385827m_6627413906338424829x=
_m_29364865378333502LPlnk885883"
                                                target=3D"_blank"
                                                moz-do-not-send=3D"true"
                                                class=3D"moz-txt-link-fre=
etext">https://www.analog.com/media/en/technical-documentation/data-sheet=
s/6406fc.pdf</a>=C2=A0or
                                              alternatively just
                                              replacing the chip on an
                                              LFRX since these appear to
                                              be footprint compatible.=C2=
=A0</div>
                                            <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                                            </div>
                                            <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Separately,
                                              I was looking at LFTX
                                              schematics and the part #
                                              for the amplifier is not
                                              specified.=C2=A0 Can somebo=
dy
                                              at Ettus/NI save me some
                                              time and lookup that part
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
                                      <div>Have you considered the
                                        BasicRX?</div>
                                      <div><br>
                                      </div>
                                      <div>=C2=A0=C2=A0<a
                                          href=3D"https://www.ettus.com/a=
ll-products/basicrx/"
                                          target=3D"_blank"
                                          moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-freetext"=
>https://www.ettus.com/all-products/basicrx/</a></div>
                                      <div>=C2=A0=C2=A0<a
                                          href=3D"https://files.ettus.com=
/schematics/basic_dbs/BasicRX.pdf"
                                          target=3D"_blank"
                                          moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-freetext"=
>https://files.ettus.com/schematics/basic_dbs/BasicRX.pdf</a></div>
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
                        _______________________________________________<b=
r>
                        USRP-users mailing list -- <a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">
                          usrp-users@lists.ettus.com</a><br>
                        To unsubscribe send an email to <a
                          href=3D"mailto:usrp-users-leave@lists.ettus.com=
"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">
                          usrp-users-leave@lists.ettus.com</a><br>
                      </blockquote>
                    </div>
                  </div>
                  -- <br>
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
                                              <div dir=3D"ltr"
                                                style=3D"font-size:small"=
><span
style=3D"color:rgb(80,0,80)">Dr. Robert W McGwier, Ph.D.</span><br
                                                  style=3D"color:rgb(80,0=
,80)">
                                                Affiliated=C2=A0<span
                                                  style=3D"color:rgb(80,0=
,80)">Faculty,
                                                  Virginia Tech</span></d=
iv>
                                              <div dir=3D"ltr"
                                                style=3D"font-size:small"=
>Affiliated
                                                Faculty, University of
                                                Scranton<br
                                                  style=3D"color:rgb(80,0=
,80)">
                                                <span
                                                  style=3D"color:rgb(80,0=
,80)">Former
                                                  ARDC Member of Board</s=
pan><br
style=3D"color:rgb(80,0,80)">
                                                <span
                                                  style=3D"color:rgb(80,0=
,80)">N4HY:
                                                  ARRL, TAPR, AMSAT,
                                                  EARC, CSVHFS</span><br
style=3D"color:rgb(80,0,80)">
                                                <span
                                                  style=3D"color:rgb(80,0=
,80)">Sky:
                                                  AAVSO, Sky360, <a
                                                    href=3D"http://explor=
escu.org"
                                                    target=3D"_blank"
                                                    moz-do-not-send=3D"tr=
ue">
                                                    explorescu.org</a>,
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
                </div>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </div>
          </blockquote>
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

--------------BDRMX0wGR96EskPd2fqbzvKw--

--===============5537602786485470632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5537602786485470632==--
