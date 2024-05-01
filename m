Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4378B9017
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 21:33:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7466385502
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 15:33:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714592031; bh=cUixhLjQWOr/vbCRXdR7rB6Hm3pgt1u/MqTsSkL+QiU=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sjhLMkHv3wP6Jcve1yXf8jUVb4Y9Zi0Ykc7GI66om+OVL9xbz5A5sOLyNG9rjRRFj
	 IaHkVYvhfqypKokKWpbac2nAcA7Wpu/dr0ewOCmqPV1S0e0rtqMRMHQDwAgucP4MSP
	 4B0WJjf1B8tnQ+wOy5Yoq/2U8bodGhZxZpiVLRBVeVK6cNreVfJKFvw+knHKMUHL0E
	 wYCJW7MYmyusCWPs9xU4WVFEy8WR5odeeeOlf/H4jI/pb2Q0fsi3jntBMtJSoffoJC
	 pOkHT/OERRzm8oTZxdfYYhHlybx+Zg2NR44irzEVdpbDtwi/klx9gJBVNqevCBiQem
	 kSIbKrjPupyzw==
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 863013854EF
	for <usrp-users@lists.ettus.com>; Wed,  1 May 2024 15:33:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HpOvE7f/";
	dkim-atps=neutral
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6ee2d64423cso2464897a34.2
        for <usrp-users@lists.ettus.com>; Wed, 01 May 2024 12:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714591988; x=1715196788; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F1DibSqzRUHlVGIiUzbf8ClWzDIEXaslaFuODtzeNMM=;
        b=HpOvE7f/GS2cOAHlZpIjQV4UTaMvaxuRwsaYDbF8wkfkxF2QW070GvTJcuGqVsoTA5
         o7tOHlvmK/qeyz2lOhUOUbCWesSauVTQFwU2u0q6g0htX1+MUPZ/5oRm6xKp0yIQ3z0x
         YfALswZ4xFeKkL5Qn9HkmX+6I/als7kMS8X/mfHnY7MHZRAlixZ7IjZxCsZPJrjzR7OT
         tNC4F68j5aiWMxWNNk7t5OmpiqEAVfUORKHwQvxJG+gXDGYir7M9F/sQxzHHuJe7EzuS
         HbLUN/I8uxfnBIiRh1e9KkpJL5axN04QVClZWI1HJ9GFUcdnS7rfEx+DTXd4koHKjZK1
         5rVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714591988; x=1715196788;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F1DibSqzRUHlVGIiUzbf8ClWzDIEXaslaFuODtzeNMM=;
        b=V9jYpUhuPzXwZjbbHhf7jKPzRNH4fK2LCt7Hs7cd9JrxG2KACWbX0BX2cSNsNRr6+o
         fD6p38UsBC+sZhK7+991YP7AsD7Vc0vD5nb1O2z7PMT88c5Zi7QyH4MU352ceLmQCcoq
         aisVNZd6XsJ+hKT2xM6fCHOy2oxr73wStVkIAifqvXVUjTPQC1g6cgPl94mlB6xelplM
         jJnlYKHxDBO1HuUm7thn721xdTTw7Coq5TW597xdqCHgbhzizf3OFUOVTOymH3cuCPya
         MzPbbg1m5PPSOrSM4ETNkJWKLbf9LWpzS9MexLAqBaPwm/Rcv3cAUmpJEaSeEXezyC30
         ZtzA==
X-Forwarded-Encrypted: i=1; AJvYcCX6lioEF/G19W/aDPgC/WRzavxk5LJW6miQMYRarxP0ta6XbVrI9baAwFClaQh4WWpj+7/JyPLlzGxf4kf4ae1IOSYu0lITJncgpQ==
X-Gm-Message-State: AOJu0YzuHnGNYpoOOOOtMxknbuh0bZPWuDejH9eAJKAA/6AvUfKXCM7l
	b8qvo57QffOiPta3/OxdFjuOEdW89nluUkObvF9LmOpGKxFvBLrG
X-Google-Smtp-Source: AGHT+IFUajtvCNRiRHJRb0XXz4auonS6IX4S1DKgekjMcIVHuc9R5KaTRycsvVaueIxsQZcoL2FSpg==
X-Received: by 2002:a9d:7e8f:0:b0:6eb:7685:b00 with SMTP id m15-20020a9d7e8f000000b006eb76850b00mr3424611otp.28.1714591987591;
        Wed, 01 May 2024 12:33:07 -0700 (PDT)
Received: from smtpclient.apple ([2605:b100:d46:76fc:35c9:69a4:49b5:692c])
        by smtp.gmail.com with ESMTPSA id vz6-20020a05620a494600b0078d6349aa03sm12591738qkn.103.2024.05.01.12.33.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 12:33:07 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 1 May 2024 15:32:53 -0400
Message-Id: <A274BA7F-FCBD-489E-8251-D1265CB2E3D5@gmail.com>
References: <CAB__hTRpzWoOC2n5NkSCkTbQeQxcz6XBv2ZFc_B1f_xKH+0ZoQ@mail.gmail.com>
In-Reply-To: <CAB__hTRpzWoOC2n5NkSCkTbQeQxcz6XBv2ZFc_B1f_xKH+0ZoQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: JJMQ2FRG4PQ5CTXBAOBCVFP7ONT3DZFS
X-Message-ID-Hash: JJMQ2FRG4PQ5CTXBAOBCVFP7ONT3DZFS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: zhou <hwzhou@yahoo.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Freq synchronization between
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JJMQ2FRG4PQ5CTXBAOBCVFP7ONT3DZFS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6305299021442276088=="


--===============6305299021442276088==
Content-Type: multipart/alternative; boundary=Apple-Mail-D5076A7F-33EB-4238-B838-C4FA6FF2BB7C
Content-Transfer-Encoding: 7bit


--Apple-Mail-D5076A7F-33EB-4238-B838-C4FA6FF2BB7C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It=E2=80=99s also why you can=E2=80=99t get=
 tight instantaneous phase alignment between two GPSDO devices even when on t=
he same antenna.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div=
 dir=3D"ltr"><br><blockquote type=3D"cite">On May 1, 2024, at 2:12 PM, Rob K=
ossler &lt;rkossler@nd.edu&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>The 10 MHz ref s=
upplied to each X310 device is used in a PLL in each device to obtain the 10=
MHz ref used for that device (and for disciplining the various LOs on the de=
vice). Thus, there is a relative phase "wobble" between the 10MHz ref signal=
s used on each device as each PLL continuously adjusts to maintain disciplin=
ed output.&nbsp; Over time, this averages out to zero. But, instantaneously,=
 it is not. So, my question is: how instantaneous is your phase measurement?=
&nbsp; If you instead calculate a phase averaged over numerous samples, can y=
ou get a consistent result? =46rom your plot, it looks like this is true.<br=
></div><div>Rob<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, May 1, 2024 at 11:04=E2=80=AFAM zhou via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div><div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;fon=
t-size:13px"><div></div>
        <div><br></div><div><br></div>
       =20
        </div><div id=3D"m_-3650333112459443087ydpc994c9a6yahoo_quoted_54614=
41577">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,A=
rial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                        On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D. L=
eech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchv=
onbraun@gmail.com</a>&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
               =20
               =20
                <div><div id=3D"m_-3650333112459443087ydpc994c9a6yiv43497514=
42"><div>
    <div>On 01/05/2024 10:11, zhou via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue,Helve=
tica,Arial,sans-serif;font-size:13px">
        <div dir=3D"ltr">Hi Marcus,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Thanks for your response.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">
          <div><span style=3D"color:rgb(38,40,42);font-family:Helvetica Neue=
,Helvetica,Arial,sans-serif">"Are
              you setting up clocking identically for both USRPs?&nbsp;&nbsp=
; That
              is setting the reference clock to "external" and the 1PPS
              source to "external" on both devices?&nbsp;&nbsp; Are you usin=
g a
              single multi_usrp object for all RX channels?"</span></div>
          <div><br clear=3D"none">
          </div>
          <div dir=3D"ltr">Yes, I use multi_usrp
            multi_usrp::make(<span>'addr0=3D192.168.12.2,second_addr0=3D192.=
168.13.2,addr1=3D192.168.14.2,second_addr1=3D192.168.15.2,master_clock_rate=3D=
184.32e6'</span>)<br clear=3D"none" style=3D"color:rgb(38,40,42);font-family=
:Helvetica Neue,Helvetica,Arial,sans-serif">
            &nbsp;<br clear=3D"none">
            <span><span style=3D"color:rgb(0,0,0);font-family:Helvetica Neue=
,Helvetica,Arial,sans-serif">"external"
                set for both ref and pps:</span></span></div>
          <div dir=3D"ltr"><span>usrp-&gt;set_clock_source("external")</span=
></div>
          <div dir=3D"ltr"><span>usrp-&gt;set_time_source(<span><span style=3D=
"color:rgb(0,0,0);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">"ex=
ternal")</span></span></span><br clear=3D"none">
            I think this should automatically set both devices.<br clear=3D"=
none">
            <br clear=3D"none" style=3D"color:rgb(38,40,42);font-family:Helv=
etica Neue,Helvetica,Arial,sans-serif">
            <span style=3D"color:rgb(38,40,42);font-family:Helvetica Neue,He=
lvetica,Arial,sans-serif">"What
              type of daughtercards are in your X310?"</span><br clear=3D"no=
ne" style=3D"color:rgb(38,40,42);font-family:Helvetica Neue,Helvetica,Arial,=
sans-serif">
          </div>
          UBX</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Kind regards.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
      </div>
   =20
    And, to clarify, this is an Octoclock-G, and not a plain Octoclock ?<div=
 id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442yqtfd85029" dir=3D"ltr"=
><br></div><div id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442yqtfd850=
29" dir=3D"ltr">It is OctoClock GPSDO, and Internal is used.&nbsp;<br clear=3D=
"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;fo=
nt-size:13px">
        <div><br clear=3D"none">
        </div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442ydp5189b7afya=
hoo_quoted_4632613607">
        <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial=
,sans-serif;font-size:13px;color:rgb(38,40,42)">
          <div> On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D.
            Leech <a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com" r=
el=3D"nofollow" target=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote:=
 </div>
          <div><br clear=3D"none">
          </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442ydp5189=
b7afyiv7691143590">
              <div id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442ydp51=
89b7afyiv7691143590yqt92825">
                <div>
                  <div>On
                    01/05/2024 08:25, zhou via USRP-users wrote:<br clear=3D=
"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,s=
ans-serif;font-size:13px">
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
                    <div dir=3D"ltr"><img title=3D"Inline image" alt=3D"Inli=
ne image" style=3D"max-width: 800px;" data-unique-identifier=3D""><br clear=3D=
"none">
                    </div>
                    <div dir=3D"ltr">cos(t)+i*sin(t) signal is split into
                      and received on four Rx antennas.&nbsp;<span><span sty=
le=3D"color:rgb(0,0,0);font-family:Helvetica Neue,Helvetica,Arial,sans-serif=
">Two
                          X310s are connected to the same OctoClock for
                          10MHz Ref and PPS. Tx and Rx commands are all
                          timed. The measurement results are as below:</span=
></span></div>
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
                  USRPs?&nbsp;&nbsp; That is setting the reference clock to
                  "external" and the 1PPS source to "external" on both
                  devices?&nbsp;&nbsp; Are you using a single multi_usrp obj=
ect
                  for all RX channels?<br clear=3D"none">
                  <br clear=3D"none">
                  What type of daughtercards are in your X310?<br clear=3D"n=
one">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442ydp5189=
b7afyqt89423">_______________________________________________<br clear=3D"no=
ne">
              USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:us=
rp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@list=
s.ettus.com</a><br clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect" href=3D"mail=
to:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp=
-users-leave@lists.ettus.com</a><br clear=3D"none">
            </div>
          </div>
        </div>
      </div>
      <br clear=3D"none">
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists=
.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a=
>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users-=
leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com</a>
</pre>
    </blockquote>
    <br clear=3D"none">
  </div></div></div><div id=3D"m_-3650333112459443087ydpc994c9a6yqtfd03165">=
_______________________________________________<br clear=3D"none">USRP-users=
 mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com=
" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><br clear=
=3D"none">To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:u=
srp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-use=
rs-leave@lists.ettus.com</a><br clear=3D"none"></div></div>
            </div>
        </div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</div></blockquote></body></html>=

--Apple-Mail-D5076A7F-33EB-4238-B838-C4FA6FF2BB7C--

--===============6305299021442276088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6305299021442276088==--
