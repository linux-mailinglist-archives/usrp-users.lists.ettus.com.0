Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B808B8BBB
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 16:15:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE1E3385514
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 10:15:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714572918; bh=1mgoQ29HDKIgeAY5v/C0VSYEWQOr7y9U/KZv1GXtQWw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cO2WV11att24qAZFfzbPCOHbKpTewgIQnVTaf+cXQWHi0VSiIjL5jAl8oLoyLBlGR
	 LCAFX6W7GoWVLeEavUkPkWnrU5S8omsUo+Wu6PNvv5OuVsKcgxSgGDLnXRPYYhFOz3
	 CvbjFh4gS4mVzWthdZHU7z5j0iitcElhHYn6xQjf7q7kedNSOeks2RTSO/kM19hotB
	 kFdNinCGxuHMhvWnUW+K5MOAFzDTrULLuAKVPBQ42i8/US+KOjWJ0esbOu09WJzGIV
	 U8+4tRCAzEv6+8hvGDhjqE8XxVgZhA/UVuMKU8EiiyC8LLNL3zH+WL8T1R6DdBGP9Y
	 W/Fw3oqDWRXfg==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 92762385203
	for <usrp-users@lists.ettus.com>; Wed,  1 May 2024 10:15:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="N5BuPWBJ";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-434d0e3f213so24448741cf.3
        for <usrp-users@lists.ettus.com>; Wed, 01 May 2024 07:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714572905; x=1715177705; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A6LmHYAt0E1hWClhUf3MFiOHx62mxwMUVLD62Wt4BgE=;
        b=N5BuPWBJX3dbm0T1eVmCOOqmpKoMrjzQ5noAuocKb/vA3JBB9mYLqo8b5VEQDzxwTk
         vlxUb0KPiB/eDFamgGd4sql/UnombhbIo7ze6ZVG8ma8PPcoox2hlzj1D1hL1yP2Mk6e
         Fa4HmMEwQWY32NWQVhOeU0A9/FoDPngoGody38POJ0AJnGxXkb/XWgM8hsNOK1H2Zgo+
         cUVkvTCZUN06R/846+/EEy+NIh4uyNLOYKNNkoh11hqjPPgPK8Tfyjoks1clIWj+vTfg
         ji0MIKjMI9z6awHq0DBHAICOJcHUqz5sXRrHsAq2UXZu0egH0nXJew4Ray6WDMJvD7dF
         IpAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714572905; x=1715177705;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A6LmHYAt0E1hWClhUf3MFiOHx62mxwMUVLD62Wt4BgE=;
        b=aqxh/GeJRZphL9NrPoESQpEUD2703obk5gAU74JklpPJ2QFJ3pyT2NQcz+mi6VwGu9
         iNCOC3uJLDQmW7OgEMJ+SYQT80kSF9nroaLtIopSUAGfShliXi84hETDeEE4ZgkveDxw
         /kymPJr9hTRghWnAaJtjcG2JogpivgYFFl5Hatk5AWSSGWXUVLTw5hNGLoySO6987bC/
         2idaW+i/venrGeft/zWILBFdd60Fd8p/xLHa9noZI4LAcm7Q89kEOhKZTr9OgFKksh+l
         lll2KSq9Dprs37TUsTgALvThtCH0s1z+/63nJ74EzPkKICBAe+3aR6doTNmv0TWgckFK
         /h9g==
X-Gm-Message-State: AOJu0Yxf1yF47FslUYeD2wbdJ3LcCxkwqPXNToWRYga8Qb5djJv0T+HS
	8kOaoZ6W3vQrh498EBntkVYl6ziZM6gQwBo0RBbN74htciUdfJ5RSW2kJg==
X-Google-Smtp-Source: AGHT+IGnD9GJmrlTNYItE3jSoaYjty4/SxvgcWag5kMVHiswzBYjJsPDFP+X/o2hWf9uFdIAlBDPcQ==
X-Received: by 2002:a05:622a:1647:b0:43a:ef4e:7b28 with SMTP id y7-20020a05622a164700b0043aef4e7b28mr3100541qtj.21.1714572905268;
        Wed, 01 May 2024 07:15:05 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id ic10-20020a05622a68ca00b00436510ddc5esm12374645qtb.34.2024.05.01.07.15.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 07:15:05 -0700 (PDT)
Message-ID: <d1a9560c-99c6-423b-ba10-26f08ee1b82e@gmail.com>
Date: Wed, 1 May 2024 10:14:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com>
 <e39abf8d-6490-481e-bbbc-b89593e88d2f@gmail.com>
 <336160565.3149887.1714566315941@mail.yahoo.com>
 <8fb7d502-818c-41e8-a5d7-455fa7778e38@gmail.com>
 <236821295.3178397.1714572681617@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <236821295.3178397.1714572681617@mail.yahoo.com>
Message-ID-Hash: BNJ6CDGXPSX4OTUHYP6XP3OOB7VJCDRT
X-Message-ID-Hash: BNJ6CDGXPSX4OTUHYP6XP3OOB7VJCDRT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Freq synchronization between
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BNJ6CDGXPSX4OTUHYP6XP3OOB7VJCDRT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5817554522669164978=="

This is a multi-part message in MIME format.
--===============5817554522669164978==
Content-Type: multipart/alternative;
 boundary="------------RwnBaRdgaTwEdNY0q00kekxI"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------RwnBaRdgaTwEdNY0q00kekxI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 01/05/2024 10:11, zhou via USRP-users wrote:
> Hi Marcus,
>
> Thanks for your response.
>
> "Are you setting up clocking identically for both USRPs?=C2=A0=C2=A0 Th=
at is=20
> setting the reference clock to "external" and the 1PPS source to=20
> "external" on both devices?=C2=A0=C2=A0 Are you using a single multi_us=
rp object=20
> for all RX channels?"
>
> Yes, I use multi_usrp=20
> multi_usrp::make('addr0=3D192.168.12.2,second_addr0=3D192.168.13.2,addr=
1=3D192.168.14.2,second_addr1=3D192.168.15.2,master_clock_rate=3D184.32e6=
')
>
> "external" set for both ref and pps:
> usrp->set_clock_source("external")
> usrp->set_time_source("external")
> I think this should automatically set both devices.
>
> "What type of daughtercards are in your X310?"
> UBX
>
> Kind regards.
>
And, to clarify, this is an Octoclock-G, and not a plain Octoclock ?


>
>
> On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 01/05/2024 08:25, zhou via USRP-users wrote:
> Hi All,
>
> I am trying to use 4Rx and 4Tx antennas from two X310 USRPs. I hope=20
> the received signals have stable phase relationship but they don't=20
> seem to be. I am wondering why and how to fix it.
>
> I measured the phase using the connection as below:
> Inline image
> cos(t)+i*sin(t) signal is split into and received on four Rx antennas.=20
> Two X310s are connected to the same OctoClock for 10MHz Ref and PPS.=20
> Tx and Rx commands are all timed. The measurement results are as below:
>
>
> The Tx signal is continuous during test. I measured phase every second=20
> for 20 sec. In the 2nd USRP, the phases are stable on both antennas=20
> while it is not in the 1st. If I change the Tx signal to the 1st USRP,=20
> then the results swap - phases become stable in the 1st USRP and=20
> unstable in the 2nd.
>
> My first though was that there might be small CFO between USRPs even=20
> though both are connected to the OctoClock, but CFO should have caused=20
> linear change. Here, the phase offset is not linear and kind of random=20
> within 20 second measurement.
>
> What can be the reason? Any suggestion will be appreciated.
>
> Kind regards,
> H.
> Are you setting up clocking identically for both USRPs?=C2=A0=C2=A0 Tha=
t is=20
> setting the reference clock to "external" and the 1PPS source to=20
> "external" on both devices?=C2=A0=C2=A0 Are you using a single multi_us=
rp object=20
> for all RX channels?
>
> What type of daughtercards are in your X310?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------RwnBaRdgaTwEdNY0q00kekxI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 01/05/2024 10:11, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:236821295.3178397.1714572681617@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpb1f78624yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for your response.<=
/div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div><span
style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, =
Arial, sans-serif;">"Are
              you setting up clocking identically for both USRPs?=C2=A0=C2=
=A0 That
              is setting the reference clock to "external" and the 1PPS
              source to "external" on both devices?=C2=A0=C2=A0 Are you u=
sing a
              single multi_usrp object for all RX channels?"</span></div>
          <div><br>
          </div>
          <div dir=3D"ltr" data-setdir=3D"false">Yes, I use multi_usrp
            multi_usrp::make(<span>'addr0=3D192.168.12.2,second_addr0=3D1=
92.168.13.2,addr1=3D192.168.14.2,second_addr1=3D192.168.15.2,master_clock=
_rate=3D184.32e6'</span>)<br
style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, =
Arial, sans-serif;"
              clear=3D"none">
            =C2=A0<br>
            <span><span
style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Ari=
al, sans-serif;">"external"
                set for both ref and pps:</span></span></div>
          <div dir=3D"ltr" data-setdir=3D"false"><span>usrp-&gt;set_clock=
_source("external")</span></div>
          <div dir=3D"ltr" data-setdir=3D"false"><span>usrp-&gt;set_time_=
source(<span><span
style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Ari=
al, sans-serif;">"external")</span></span></span><br>
            I think this should automatically set both devices.<br>
            <br
style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, =
Arial, sans-serif;"
              clear=3D"none">
            <span
style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, =
Arial, sans-serif;">"What
              type of daughtercards are in your X310?"</span><br
style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, =
Arial, sans-serif;"
              clear=3D"none">
          </div>
          UBX</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Kind regards.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
    </blockquote>
    And, to clarify, this is an Octoclock-G, and not a plain Octoclock ?<=
br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:236821295.3178397.1714572681617@mail.yahoo.com">
      <div class=3D"ydpb1f78624yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp5189b7afyahoo_quoted_4632613607"
        class=3D"ydp5189b7afyahoo_quoted">
        <div
style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-=
size:13px;color:#26282a;">
          <div> On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp5189b7afyiv7691143590">
              <div id=3D"ydp5189b7afyiv7691143590yqt92825"
                class=3D"ydp5189b7afyiv7691143590yqt7336830375">
                <div>
                  <div class=3D"ydp5189b7afyiv7691143590moz-cite-prefix">=
On
                    01/05/2024 08:25, zhou via USRP-users wrote:<br
                      clear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;"
class=3D"ydp5189b7afyiv7691143590ydpc723dc89yahoo-style-wrap">
                    <div dir=3D"ltr">Hi All,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I am trying to use 4Rx and 4Tx
                      antennas from two X310 USRPs. I hope the received
                      signals have stable phase relationship but they
                      don't seem to be. I am wondering why and how to
                      fix it.</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I measured the phase using the
                      connection as below:</div>
                    <div dir=3D"ltr"><img title=3D"Inline image"
                        alt=3D"Inline image" src=3D""
                        style=3D"max-width:800px;"
class=3D"ydp5189b7afyiv7691143590yahoo-inline-image"
                        data-inlineimagemanipulating=3D"true"
                        moz-do-not-send=3D"true"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">cos(t)+i*sin(t) signal is split into
                      and received on four Rx antennas.=C2=A0<span><span
style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;">Two
                          X310s are connected to the same OctoClock for
                          10MHz Ref and PPS. Tx and Rx commands are all
                          timed. The measurement results are as below:</s=
pan></span></div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                      <span></span>The Tx signal is continuous during
                      test. I measured phase every second for 20 sec. In
                      the 2nd USRP, the phases are stable on both
                      antennas while it is not in the 1st. If I change
                      the Tx signal to the 1st USRP, then the results
                      swap - phases become stable in the 1st USRP and
                      unstable in the 2nd.</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">My first though was that there might
                      be small CFO between USRPs even though both are
                      connected to the OctoClock, but CFO should have
                      caused linear change. Here, the phase offset is
                      not linear and kind of random within 20 second
                      measurement.</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">What can be the reason? Any
                      suggestion will be appreciated.<br clear=3D"none">
                      <span></span><br clear=3D"none">
                      <span></span>Kind regards,</div>
                    <div dir=3D"ltr">H.</div>
                  </div>
                  Are you setting up clocking identically for both
                  USRPs?=C2=A0=C2=A0 That is setting the reference clock =
to
                  "external" and the 1PPS source to "external" on both
                  devices?=C2=A0=C2=A0 Are you using a single multi_usrp =
object
                  for all RX channels?<br clear=3D"none">
                  <br clear=3D"none">
                  What type of daughtercards are in your X310?<br
                    clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydp5189b7afyqt7336830375"
              id=3D"ydp5189b7afyqt89423">________________________________=
_______________<br
                clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollo=
w"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br
                clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"tru=
e"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br
                clear=3D"none">
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

--------------RwnBaRdgaTwEdNY0q00kekxI--

--===============5817554522669164978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5817554522669164978==--
