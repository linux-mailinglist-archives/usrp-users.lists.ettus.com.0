Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9655FC686
	for <lists+usrp-users@lfdr.de>; Wed, 12 Oct 2022 15:31:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5EC7383685
	for <lists+usrp-users@lfdr.de>; Wed, 12 Oct 2022 09:31:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665581514; bh=Rrmq1L4i/h28usBB9GrPJT9xAgTDvVvRsyd9R0EGt/Q=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=lt+YzmM1H8a9GHYgIOiKT0fJgN7kAFvJl31+SGZiNPQigu8olEO8NudLBnemZwQpq
	 T+3f2AkvdaY3k7QRO9rXUjbU9pTZs8ia4GOYkkYHpeZ587aETu3B1S6Cw2OBs1SdOS
	 WpNQfIzvbrtOWE3OFOTlrXqwWPXkELzgX2QnHA53TrbhkGcgTB24Q7EU15v1/T+1tg
	 7UO6fHg9GMkk+WuH9btxTv3CyYQRLUbscCvw4mLJ6yWcjSQBJMWy6jPAUny4jdSbcY
	 HIcIRCGV+39BUZbKNSrbwhHUyyrODPWdAqUR9FAL2oCfwod2zu1vQqNo7zfZ2h5/Uq
	 hpdihGD37G9fw==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id BDD49380A4D
	for <usrp-users@lists.ettus.com>; Wed, 12 Oct 2022 09:28:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="7BGpR+3P";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id fy4so1545287ejc.5
        for <usrp-users@lists.ettus.com>; Wed, 12 Oct 2022 06:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=auTRZpvNt1wH7pD7kdTyJOj7qcMVeO465T9OEzu+EGs=;
        b=7BGpR+3P228Q1htQrO9qbg7dVwfoyKf50faM+uocUdeRcOuELgzl4Qr4KkRSwePAKT
         hgP7W1p3UG4UZr1jbAdgUubfnyR7nGgd7+4SdRCCUK8g0QxGhuyGX2pc2HYN2O4O4tZL
         A6yv373d4GGOIdY69aXs8Qozn4yLTGxuUAq4gqzTuas7a4OdELsIytvvOo3lx/tzfuS1
         aZedKNw59xh6lsuWa7GbaGwIVP1zcHFlEoy09UATCA0VLywVin81NOeRcXtQ4jzFr+Ez
         KriGYTPFC96jieGWnSiDsyV2MizbtHpL34YFrzDJ9PcHpr1jgORToRWOG3JFwC+mrs8u
         tN7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=auTRZpvNt1wH7pD7kdTyJOj7qcMVeO465T9OEzu+EGs=;
        b=lkdsfKNETn5b4tGaOBTovC/uNZf8E3PAzoWnYc/gdIhMFunpN3hHRns4yU88BVGNGQ
         43wXk6wNN+s7bgoRzYTB4mVSqtjYx0ZDAW4WvSUMrP3Qhs9FV1dmbUo7hSkco3QF8D1p
         f1tUwZqKmWcoiDlseQOJLRy7FXHsaoZYw9g6l8fdqt6XKaD2n8hQXyRWyUNjvweDgroB
         pO1+Fp+eT0PWo7UpiZgtxPs6cSAPiFP0GUXVww46W/txpAydRdUWh2WIGCphEjN2akry
         Jue5aPGliwzoM8fvQp8bIHhI1CJeoq845iEQY3XB4spWGSg2/6CQoevb3+IWC1nGECLC
         Appg==
X-Gm-Message-State: ACrzQf1C2LTTs5V1Z44bWVaHL089BCU0hcchsLJ/4qUidFBvr1zECpv6
	OJ0DOqmUG0IIP8LJmc8FlprizniDkh2K5PPWnkmL2kj7xj2X0A==
X-Google-Smtp-Source: AMsMyM5VGlOGTac9Yx7mmd9SPvNjFFF3vDoR7CT+CYiZh36Os0msxkismOd9cmNEJEP+eyj2+tvcWzbEku/lPu6iJh0=
X-Received: by 2002:a17:907:9618:b0:78d:fa75:e2b8 with SMTP id
 gb24-20020a170907961800b0078dfa75e2b8mr1428630ejc.65.1665581338616; Wed, 12
 Oct 2022 06:28:58 -0700 (PDT)
MIME-Version: 1.0
References: <1376300873.302187.1665525196243@mail.yahoo.com>
 <9D936851-6284-407A-A928-2112A93A3C9D@gmail.com> <1004169650.396598.1665563023045@mail.yahoo.com>
In-Reply-To: <1004169650.396598.1665563023045@mail.yahoo.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 12 Oct 2022 08:28:41 -0500
Message-ID: <CAFche=h-mzMYbOJR+QW01rWrLeAsp7EcpDhC8bJLpPs0bG-fqA@mail.gmail.com>
To: zhou <hwzhou@yahoo.com>
Message-ID-Hash: YVUXNM33YXVE2EZ26OVWM7MJZ3NRJ7S2
X-Message-ID-Hash: YVUXNM33YXVE2EZ26OVWM7MJZ3NRJ7S2
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1.0 speed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YVUXNM33YXVE2EZ26OVWM7MJZ3NRJ7S2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7693449184491975942=="

--===============7693449184491975942==
Content-Type: multipart/alternative; boundary="00000000000008828405ead66065"

--00000000000008828405ead66065
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There was a change related to how get_time_now was implemented in UHD 4.0
but that was improved in UHD 4.2. I would expect the behavior in 4.2 to be
more like 3.15 and earlier.

Wade

On Wed, Oct 12, 2022 at 3:24 AM zhou via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Marcus,
>
> Different OS/kernels in the two systems.
> In old system with UHD 3.10, the OS/kernel are Ubuntu 16.04.6 LTS
> (GNU/Linux 4.4.0-176-lowlatency x86_64)
> In new system with UHD 4.1.0, the OS/kernel are Ubuntu 18.04.5 LTS
> (GNU/Linux 5.4.0-80-lowlatency x86_64)
>
>
>
> On Tuesday, 11 October 2022 at 23:11:50 BST, Marcus D Leech <
> patchvonbraun@gmail.com> wrote:
>
>
> Is it the same OS/kernel version in both cases?
>
> Sent from my iPhone
>
> On Oct 11, 2022, at 5:53 PM, zhou <hwzhou@yahoo.com> wrote:
>
> =EF=BB=BF
> Hi Marcus,
>
> I haven't tried UHD 4.2 or 4.3. I see ULLL sometimes in new system, so
> actually I am thinking reverting UHD back to the 3.10.
>
>
>
>
> On Tuesday, 11 October 2022 at 21:47:30 BST, Marcus D. Leech <
> patchvonbraun@gmail.com> wrote:
>
>
> On 2022-10-11 16:23, zhou wrote:
>
> Thanks Marcus. Yes, I use the get_time_now function to read time inside
> USRPs.
>
> I also think the newer UHD versions should be better, but the measurement=
s
> tell differently. The queries to USRPs are sequential.
> There are 16 USRPs using UHD 4.1.0. I query them sequentially and the tim=
e
> intervals one example is as follows (unit: ms):
> 1.683691
> 1.606288
> 1.629145
> 1.790804
> 1.685894
> 1.736507
> 1.471674
> 1.424962
> 1.460004
> 1.403206
> 1.435221
> 1.394569
> 2.043707
> 1.509543
> 1.853792
>
> In old system, 24 USRPs use UHD 3.10. The time intervals in one example i=
s
> (unit: ms):
> 0.385173
> 0.296745
> 0.284212
> 0.273682
> 0.278543
> 0.274327
> 0.279519
> 0.274441
> 0.276693
> 0.296875
> 0.275212
> 0.307623
> 0.309554
> 0.28233
> 0.28234
> 0.275119
> 0.283057
> 0.277138
> 0.279357
> 0.276074
> 0.277696
> 0.276335
> 0.280675
>
>
> Though there is some variance in intervals in both systems, the differenc=
e
> between old and new systems are significant and reliable.
> Could you please pass my case to the R&D team to confirm?
>
> Thanks,
> Hongwei
>
>
>
> On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D. Leech
> <patchvonbraun@gmail.com> <patchvonbraun@gmail.com> wrote:
>
>
> On 2022-10-11 12:15, zhou via USRP-users wrote:
>
> Hi,
>
> Some of our USRPs are using UHD 3.10 because they are in old systems. and
> I am also using UHD 4.1.0 in some other USRPs in new system. The USRP
> products are all NI USRP 2944 (X310).
> In my applications, I need to use PPS signal to synchronize multiple
> USRPs. After applying PPS signals, I read back the time in USRPs one by
> one. Because of network delay, there is some difference between the
> readings. However, the difference is much bigger in UHD 4.1.0.
>
> The interval between two USRPs using UHD 3.10 is about 0.2ms while it is
> about 1.4ms in UHD 4.1.0
>
> Does this mean that UHD 4.1.0 is slower than UHD 3.10?
>
> Thanks for any suggestion,
>
>  Hongwei
>
> Have you tried UHD 4.2 or UHD 4.3?
>
> I'll point out that the performance-critical aspect is the streaming
> performance.     The latency on get_time_now() shouldn't matter
>   that much, unless you're trying to use it for synchronization, and you
> really should be doing that.  That's what set_time_next_pps()
>   and friends are for.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000008828405ead66065
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There was a change related to how get_time_now was im=
plemented in UHD 4.0 but that was improved in UHD 4.2. I would expect the b=
ehavior in 4.2 to be more like 3.15 and earlier.</div><div><br></div><div>W=
ade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, Oct 12, 2022 at 3:24 AM zhou via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div=
 style=3D"font-size:13px;font-family:Helvetica Neue,Helvetica,Arial,sans-se=
rif"><div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif"><=
/div>
        <div dir=3D"ltr" style=3D"font-family:Helvetica Neue,Helvetica,Aria=
l,sans-serif">Hi Marcus,</div><div dir=3D"ltr" style=3D"font-family:Helveti=
ca Neue,Helvetica,Arial,sans-serif"><br></div><div dir=3D"ltr" style=3D"fon=
t-family:Helvetica Neue,Helvetica,Arial,sans-serif"><div><div>Different OS/=
kernels in the two systems.</div><div dir=3D"ltr">In old system with UHD 3.=
10, <span><span style=3D"color:rgb(0,0,0);font-family:Times New Roman;font-=
size:medium">the OS/kernel are=C2=A0</span><span style=3D"color:rgb(0,0,0);=
font-family:Times New Roman;font-size:medium">Ubuntu=C2=A0</span></span>16.=
04.6 LTS (GNU/Linux 4.4.0-176-lowlatency x86_64)</div></div><div dir=3D"ltr=
"><span><span style=3D"color:rgb(0,0,0);font-family:Times New Roman;font-si=
ze:medium">In new system with UHD 4.1.0, the OS/kernel are=C2=A0</span><spa=
n style=3D"color:rgb(0,0,0);font-family:Times New Roman;font-size:medium">U=
buntu 18.04.5 LTS (GNU/Linux 5.4.0-80-lowlatency x86_64)</span></span><br><=
/div></div><div dir=3D"ltr" style=3D"font-family:Helvetica Neue,Helvetica,A=
rial,sans-serif"><br></div><div dir=3D"ltr" style=3D"font-family:Helvetica =
Neue,Helvetica,Arial,sans-serif"><span><span style=3D"color:rgb(0,0,0);font=
-family:Times New Roman;font-size:medium"><br></span></span></div><div styl=
e=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif"><br></div>
       =20
        </div><div id=3D"m_8572441594459247022ydp53b3515yahoo_quoted_604064=
5863">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, 11 October 2022 at 23:11:50 BST, Marcus D L=
eech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patch=
vonbraun@gmail.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"m_8572441594459247022ydp53b3515yiv350515144=
2"><div>Is it the same OS/kernel version in both cases?<br><br><div dir=3D"=
ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite=
">On Oct 11, 2022, at 5:53 PM, zhou &lt;<a href=3D"mailto:hwzhou@yahoo.com"=
 target=3D"_blank">hwzhou@yahoo.com</a>&gt; wrote:<br><br></blockquote></di=
v><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div style=3D"font-fa=
mily:Helvetica Neue,Helvetica,Arial,sans-serif;font-size:13px"><div></div>
        <div dir=3D"ltr">Hi Marcus,=C2=A0</div><div dir=3D"ltr"><br></div><=
div dir=3D"ltr">I haven&#39;t tried UHD 4.2 or 4.3. I see ULLL sometimes in=
 new system, so actually I am thinking reverting UHD back to the 3.10.</div=
><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br=
></div><div><br></div>
       =20
        </div><div id=3D"m_8572441594459247022ydp53b3515yiv3505151442ydp73a=
21c8yahoo_quoted_6186119582">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, 11 October 2022 at 21:47:30 BST, Marcus D. =
Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patc=
hvonbraun@gmail.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"m_8572441594459247022ydp53b3515yiv350515144=
2ydp73a21c8yiv0843887143">
 =20
   =20
 =20
  <div>
    <div>On 2022-10-11 16:23, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;f=
ont-size:13px">
        <div dir=3D"ltr">Thanks Marcus. Yes, I use the
          get_time_now function to read time inside USRPs.</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">I also think the newer UHD
          versions should be better, but the measurements tell
          differently. The queries to USRPs are sequential.</div>
        <div dir=3D"ltr">There are 16 USRPs using UHD
          4.1.0. I query them sequentially and the time intervals one
          example is as follows (unit: ms):</div>
        <div dir=3D"ltr">
          <div>
            <table style=3D"border-collapse:collapse;width:48pt" width=3D"6=
4" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
              <colgroup><col style=3D"width:48pt" width=3D"64"> </colgroup>=
<tbody>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"width:48pt;min-height:15pt" width=3D"64" hei=
ght=3D"20" align=3D"right">1.683691</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.606288</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.629145</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.790804</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.685894</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.736507</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.471674</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.424962</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.460004</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.403206</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.435221</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.394569</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">2.043707</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.509543</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">1.853792</td>
                </tr>
              </tbody>
            </table>
          </div>
          <br>
        </div>
        <div dir=3D"ltr">In old system, 24 USRPs use
          UHD 3.10. The time intervals in one example is (unit: ms):</div>
        <div dir=3D"ltr">
          <div>
            <table style=3D"border-collapse:collapse;width:48pt" width=3D"6=
4" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
              <colgroup><col style=3D"width:48pt" width=3D"64"> </colgroup>=
<tbody>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"width:48pt;min-height:15pt" width=3D"64" hei=
ght=3D"20" align=3D"right">0.385173</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.296745</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.284212</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.273682</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.278543</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.274327</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.279519</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.274441</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.276693</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.296875</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.275212</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.307623</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.309554</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.28233</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.28234</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.275119</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.283057</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.277138</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.279357</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.276074</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.277696</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.276335</td>
                </tr>
                <tr style=3D"min-height:15pt" height=3D"20">
                  <td style=3D"min-height:15pt" height=3D"20" align=3D"righ=
t">0.280675</td>
                </tr>
              </tbody>
            </table>
          </div>
          <br>
        </div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Though there is some variance
          in intervals in both systems, the difference between old and
          new systems are significant and reliable.</div>
        <div dir=3D"ltr">Could you please pass my case
          to the R&amp;D team to confirm?</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Thanks,</div>
        <div dir=3D"ltr">Hongwei</div>
        <div dir=3D"ltr">=C2=A0</div>
        <div dir=3D"ltr"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"m_8572441594459247022ydp53b3515yiv3505151442ydp73a21c8yiv0=
843887143ydp2ff4a00eyahoo_quoted_6295737119">
        <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Aria=
l,sans-serif;font-size:13px;color:rgb(38,40,42)">
          <div> On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D.
            Leech <a href=3D"mailto:patchvonbraun@gmail.com" rel=3D"nofollo=
w" target=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"m_8572441594459247022ydp53b3515yiv3505151442ydp73a21=
c8yiv0843887143ydp2ff4a00eyiv9416287177">
              <div id=3D"m_8572441594459247022ydp53b3515yiv3505151442ydp73a=
21c8yiv0843887143ydp2ff4a00eyiv9416287177yqt68152">
                <div>
                  <div>On
                    2022-10-11 12:15, zhou via USRP-users wrote:<br clear=
=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,=
sans-serif;font-size:13px">
                    <div dir=3D"ltr">Hi,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Some of our USRPs are using UHD 3.10
                      because they are in old systems. and I am also
                      using UHD 4.1.0 in some other USRPs in new system.
                      The USRP products are all NI USRP 2944 (X310).</div>
                    <div dir=3D"ltr">In my applications, I need to use PPS
                      signal to synchronize multiple USRPs. After
                      applying PPS signals, I read back the time in
                      USRPs one by one. Because of network delay, there
                      is some difference between the readings. However,
                      the difference is much bigger in UHD 4.1.0.=C2=A0</di=
v>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">The interval between two USRPs using
                      UHD 3.10 is about 0.2ms while it is about 1.4ms in
                      UHD 4.1.0</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Does this mean that UHD 4.1.0 is
                      slower than UHD 3.10?</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Thanks for any suggestion,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">=C2=A0Hongwei<br clear=3D"none">
                    </div>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Have you tried UHD 4.2 or UHD 4.3?<br>
    <br>
    I&#39;ll point out that the performance-critical aspect is the streamin=
g
    performance.=C2=A0=C2=A0=C2=A0=C2=A0 The latency on get_time_now() shou=
ldn&#39;t matter<br>
    =C2=A0 that much, unless you&#39;re trying to use it for synchronizatio=
n, and
    you really should be doing that.=C2=A0 That&#39;s what set_time_next_pp=
s()<br>
    =C2=A0 and friends are for.<br>
    <br>
    <br>
  </div>

</div>_______________________________________________<br>USRP-users mailing=
 list -- <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send an ema=
il to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br></div>
            </div>
        </div></div></blockquote></div></div></div>
            </div>
        </div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000008828405ead66065--

--===============7693449184491975942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7693449184491975942==--
