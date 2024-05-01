Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A9C8B8F8D
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 20:31:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC0E13852D2
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 14:31:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714588295; bh=3VwJOgz74ihQZIX3y0k2Bnn6R0sqPqyzLFnnyiq05xM=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=k8uJz1r8YuZno+No9shM38ieir6dZ9w+0tUShBz0fb2wV/SmCjW47R+2f+IYKtmxt
	 0q/J7IrybcR24owpTX4PL3zT1D+CDHomb93LzQlEW+WVUm3qYQn8bKXNobc7E47KOd
	 1tOgGrq09CUz/yTUcMfh2BVL9y6HVlNeYXwHmyqJYo7fWNqUF2SjY0zP+OxXnjCIcv
	 B031VtpEJ3rB7yxcCVDXYGIItF0QC4f7HXmE1dFBL6wPFc57jx+L2CKE/UjOPQ21h1
	 TnT6GwtvIlLuiyrKvDp1UgPHiGvLayn/yQKrSlQtbIBadHRjdLaxW83uS3kshFSfRn
	 6vAbeTL+6G1yw==
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 39325384DEC
	for <usrp-users@lists.ettus.com>; Wed,  1 May 2024 14:31:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="R95XhMQq";
	dkim-atps=neutral
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-23d5df2d600so584224fac.3
        for <usrp-users@lists.ettus.com>; Wed, 01 May 2024 11:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714588259; x=1715193059; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZkSLfwHVGRx+ZqTTqoSYYppXzbreDjA3hbbh83as5mA=;
        b=R95XhMQqqvQNiDXDLuLPiNeTpUv4O5LY7rHNdjpmYju+cUJgRDRqu3oFCJveNCyOqU
         CuZWIMitFnpU+nYqUEn3cU0uhyOWteCLlrmAuVzEz86pOkI7AxP7iqGXIZKXqjjcagqy
         t9Lgi4a1iI+ZgO2GoraFpcKdC9qg0udjpvqtLXAU7pGX9O8ps0SIS87IB+bQwz69aXKV
         nkGkZxtVYPeQKgaIGyqFrrQTbi1A3J1ae3nTwZ259Gk0+lOcAhsn3pfyYVL/47Jszoj6
         WVfW51Z3UDKLIsYJe/aRmKxNX9RFzwoeYaSJatv2kxK3CE46KsMzXx+EKK55KSLXtDkv
         nonQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714588259; x=1715193059;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZkSLfwHVGRx+ZqTTqoSYYppXzbreDjA3hbbh83as5mA=;
        b=jwt1bK0enRenhlZ6RxXivagK+oztadyPv34iy1AFv0vHSFggQqmf+l3fBazj7liLAQ
         qhOIPtXPvzMb2SXAvw3uI5Fj1Sx1sWnGH07K6qeQqnocHvh13VfkUAaLJP7ZLYRG6/tl
         tz/iw0wf2+reNXf5fsEdMdyfvXyrmWvwNyjaai7OSf0sDKWGgfz1euf7nfviSqggoK5A
         fLFDptD04I+//Cinc6qmKBK/1S1+BTtsrX38UQDNYI4QqJwjWOF2m5OeRPeUdpmtwSIQ
         8J9Cp6Ph1gY+nDTQ2+76N4m3WuvA3vUrqTZi5U7k2kA534aw25gA0ueGd/1q5nKNhYeG
         Ehhg==
X-Forwarded-Encrypted: i=1; AJvYcCXLdiRfGA9je+c4PfbEmSPM7m/XHziXwfDi4AnhLIY4OLYIlXXGcczrfmnnV+vTtJMz2flGVI1OO3ymNIbs+K32Jy6ioYAgIVegVA==
X-Gm-Message-State: AOJu0YxW4hV4PK8vd6d9jF9GGTCMbTuoNkYA/YtjPa2NfyBSexBNxUo/
	bSrkn+uYISNLpKWaVP9GxPjjzUts4IFJPwNSXmGA2BzfX7F9ROzp
X-Google-Smtp-Source: AGHT+IFHYeNGrCXWKwmJ9N0XrqhoMONHrnn9U4FDxwspv0BrhojATlCTflBv3V99FHiFp4bR/0XpdA==
X-Received: by 2002:a05:6870:4192:b0:22e:c504:74af with SMTP id y18-20020a056870419200b0022ec50474afmr3292174oac.20.1714588259347;
        Wed, 01 May 2024 11:30:59 -0700 (PDT)
Received: from smtpclient.apple ([2605:b100:d46:76fc:35c9:69a4:49b5:692c])
        by smtp.gmail.com with ESMTPSA id i4-20020a05620a144400b0078d5e60b52esm12520297qkl.114.2024.05.01.11.30.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 11:30:59 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 1 May 2024 14:30:41 -0400
Message-Id: <155E31E7-253D-4E99-90A8-36328625FB42@gmail.com>
References: <CAB__hTRpzWoOC2n5NkSCkTbQeQxcz6XBv2ZFc_B1f_xKH+0ZoQ@mail.gmail.com>
In-Reply-To: <CAB__hTRpzWoOC2n5NkSCkTbQeQxcz6XBv2ZFc_B1f_xKH+0ZoQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: U3HCHFYW3AVUWXL4YZFN6J2ZLBA43NV5
X-Message-ID-Hash: U3HCHFYW3AVUWXL4YZFN6J2ZLBA43NV5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: zhou <hwzhou@yahoo.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Freq synchronization between
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U3HCHFYW3AVUWXL4YZFN6J2ZLBA43NV5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9196868208823606561=="


--===============9196868208823606561==
Content-Type: multipart/alternative; boundary=Apple-Mail-052B99B0-1383-4F42-9C58-043D09A4DB0C
Content-Transfer-Encoding: 7bit


--Apple-Mail-052B99B0-1383-4F42-9C58-043D09A4DB0C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This is true of any pair of PLL synthesizer=
s even when using a shared reference.<div><br></div><div>My next question wa=
s going to be =E2=80=9Chow is phase measured?=E2=80=9D<br><br><div dir=3D"lt=
r">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">O=
n May 1, 2024, at 2:12 PM, Rob Kossler &lt;rkossler@nd.edu&gt; wrote:<br><br=
></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div=
 dir=3D"ltr"><div>The 10 MHz ref supplied to each X310 device is used in a P=
LL in each device to obtain the 10MHz ref used for that device (and for disc=
iplining the various LOs on the device). Thus, there is a relative phase "wo=
bble" between the 10MHz ref signals used on each device as each PLL continuo=
usly adjusts to maintain disciplined output.&nbsp; Over time, this averages o=
ut to zero. But, instantaneously, it is not. So, my question is: how instant=
aneous is your phase measurement?&nbsp; If you instead calculate a phase ave=
raged over numerous samples, can you get a consistent result? =46rom your pl=
ot, it looks like this is true.<br></div><div>Rob<br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 1, 2024 at 1=
1:04=E2=80=AFAM zhou via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div><div style=3D"font-family:Helvetica N=
eue,Helvetica,Arial,sans-serif;font-size:13px"><div></div>
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
</div></blockquote></div></body></html>=

--Apple-Mail-052B99B0-1383-4F42-9C58-043D09A4DB0C--

--===============9196868208823606561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9196868208823606561==--
