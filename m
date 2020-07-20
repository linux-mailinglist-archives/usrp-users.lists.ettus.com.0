Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE29226A07
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jul 2020 18:33:26 +0200 (CEST)
Received: from [::1] (port=56844 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxYjB-00075r-DM; Mon, 20 Jul 2020 12:33:21 -0400
Received: from mail-qv1-f47.google.com ([209.85.219.47]:41448)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hai.n.nguyen204@gmail.com>)
 id 1jxYj8-0006wf-4S
 for usrp-users@lists.ettus.com; Mon, 20 Jul 2020 12:33:18 -0400
Received: by mail-qv1-f47.google.com with SMTP id t7so7739597qvl.8
 for <usrp-users@lists.ettus.com>; Mon, 20 Jul 2020 09:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=4XRaZz1HLHa8WsHiAIVH4r8LnizsdlGw/UobxwcLFXg=;
 b=aFoh4isj5xzp/gl4vX10r/lMFGZ/n5Ro/Sdbn63aXDuFqC38SV8p9QKSX/3J4q1J81
 i5jvMZqdwxnXuPSwFKE16RE3Z39zX909xJHlx8KyY60qpg5HGyyi9hpSnw4D7frMuYT+
 UM6OeFyrOUpM92kVUp6iLxRE59dh71Nna+bL2Lh7CS5s4HFl/uvhISf4ucGI9YyA6d18
 gfk9qYg8WOSMZvTPiSWA+ZoYmsOgsNh8pliqTay9K/R0oAe9kswkFEawjCJCGhMaH4W3
 JhMmVsVacFWlbFXFMVYCIWbbdQ3odT7WHCAec8yURO6CguOziISjac72wXwCW5ZLetwp
 hs+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=4XRaZz1HLHa8WsHiAIVH4r8LnizsdlGw/UobxwcLFXg=;
 b=Oc+46HeK7WZDjlVgC0VGQAj4CnHXU/boGOc9mBQ4Lf0D8XlZoIblVuhda7359G4vVP
 MJVGvTtiU3n6xdGm6gpRKcRKo1VT+kzBid+JOqsSfiVgfk2QFSkg5bIrDheZlemtXePJ
 GT09dr43vuYmmiAEMPXJE5IVMCjHQeZs4xIrQBOZ+1DGGfUSmNNG7Lsdlix2QWQVwUle
 274x96YUXpT+hlmAtE/9oKulKRMSCNpQKnNIQegX1hwHH2NSYB7neROJAWdmJ6fLXLpO
 OBfb83qf8EXl7SHGPtb+uFh/IgENCkz5lEOHdNGOPuvK8Py3+WcDArs0o4smpShWx+4R
 68xg==
X-Gm-Message-State: AOAM533tT8JaheVv8EF6i9hJkrOEXjo4s4GkcpQV5Yw0T8byHGSdxjZ5
 yC5d9Bg4KoAdS0f+Cjhv1QhQIWpXMqa6q+GWgUzewAhXptk=
X-Google-Smtp-Source: ABdhPJykVgsW3YrmCWg+YB+lZ87PQE9+p/j5qT7LUD9NjEStqQEq1UeA68Qa/jymJ1ZYbRPMv5bDKqJ4WoMlLNNPGNo=
X-Received: by 2002:a0c:b315:: with SMTP id s21mr22215480qve.53.1595262757252; 
 Mon, 20 Jul 2020 09:32:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZDN5J8ncEHAP1H=93cBUZ_sxOzydoXKc54sKgkCcFOHV9gYA@mail.gmail.com>
In-Reply-To: <CAFZDN5J8ncEHAP1H=93cBUZ_sxOzydoXKc54sKgkCcFOHV9gYA@mail.gmail.com>
Date: Mon, 20 Jul 2020 12:32:25 -0400
Message-ID: <CAFZDN5+mXMNa4kMXfq8SUKTGn88apB3SbhCM1eoevJfGcbmO1g@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Persistent red LINK LED,
 streaming samples valued zero
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Hai Nguyen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hai Nguyen <hai.n.nguyen204@gmail.com>
Content-Type: multipart/mixed; boundary="===============0823606809640443545=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0823606809640443545==
Content-Type: multipart/alternative; boundary="000000000000f8373305aae20d8c"

--000000000000f8373305aae20d8c
Content-Type: text/plain; charset="UTF-8"

Hello,

- Are you getting any under-run indications?
There is no under-run indication.

- What sample rate are you using?
I tried with different values ranging from 1 Msamps to 100 Msamps and the
behaviors are the same.

- Do you see this at the same sample rate with an example application like
"rx_samples_to_file".   Are you using standard FPGA firmware or do
   you have your own modules in the FPGA?
No, I don't see this with rx_samples_to_file (with that example, orange
LINK LED appeared). I am using a standard FPGA image.

- What version of UHD are you using?
I'm using UHD 3.9.7 (LTS)

Best,
Hai




On Mon, Jul 20, 2020 at 1:52 AM Hai Nguyen <hai.n.nguyen204@gmail.com>
wrote:

> Hello,
>
> I'm having an error where received samples from RX chains of a X310 (after
> calling recv from the streamer) have values of 0 (both I and Q), and those
> values don't change over time. One abnormal thing is that the LINK LED in
> the front panel is persistently red during streaming. I noticed that when
> streaming samples is ok this LED is normally persistently orange instead.
>
> Do you have any ideas what would be the cause of this?
>
> Thank you and best regards,
> Hai
>

--000000000000f8373305aae20d8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>- Are you getting any=
 under-run indications?</div>
<div>There is no under-run indication.<br></div><div><br></div>
- What sample rate are you using?<br>
<div>I tried with different values ranging from 1 Msamps to 100 Msamps and =
the behaviors are the same.</div><div><br></div>
- Do you see this at the same sample rate with an example application like =
<br>
&quot;rx_samples_to_file&quot;.=C2=A0 =C2=A0Are you using standard FPGA fir=
mware or do<br><div>
=C2=A0 =C2=A0you have your own modules in the FPGA?</div><div>No, I don&#39=
;t see this with rx_samples_to_file (with that example, orange LINK LED app=
eared). I am using a standard FPGA image. <br></div>
<br><div>
- What version of UHD are you using?</div><div>I&#39;m using UHD 3.9.7 (LTS=
)</div><div><br></div><div>Best,</div><div>Hai<br></div><div><br></div><div=
><br></div><br>
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Jul 20, 2020 at 1:52 AM Hai Nguyen &lt;<a href=3D"mailto:hai.n.nguy=
en204@gmail.com">hai.n.nguyen204@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div=
><div><br></div><div>I&#39;m having an error where received samples from RX=
 chains of a X310 (after calling recv from the streamer) have values of 0 (=
both I and Q), and those values don&#39;t change over time. One abnormal th=
ing is that the LINK LED in the front panel is persistently red during stre=
aming. I noticed that when streaming samples is ok this LED is normally per=
sistently orange instead. <br></div><div><br></div><div>Do you have any ide=
as what would be the cause of this?</div><div><br></div><div>Thank you and =
best regards,</div><div>Hai<br></div></div>
</blockquote></div>

--000000000000f8373305aae20d8c--


--===============0823606809640443545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0823606809640443545==--

