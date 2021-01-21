Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9B52FF3DA
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 20:10:10 +0100 (CET)
Received: from [::1] (port=50540 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2fLI-0003s5-F8; Thu, 21 Jan 2021 14:10:04 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:41508)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l2fLE-0003mC-PN
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 14:10:00 -0500
Received: by mail-ot1-f47.google.com with SMTP id k8so2671435otr.8
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 11:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=teE1RkLf06th2WphSOuZMvumXdRMNqpZ/4UfoeT+TLg=;
 b=eaoo+KoaQd0uky0xGKsNm4iAVsQIcc7jErLB4Bu2XOjVzbs8CaahtJAwebR7rsvg1s
 q4kQ1lu1wCtS/JVS8p3IFJzdlOvcUmntBqxa0FAI7vF5UOvUrjcWObdAjqqSnm4iCjkU
 4wWH7RO5/WezX5K3Ldh3WEfqgQjHBaxBAQ32rd3QCje4sDmp2WXiJ5g0VBG/MphuCsS0
 H2fVKenmh4KEtUEiyanALdrSvPYW+f2usu19plZoTTEa/gRSnw5PvKbfGevjfbyJbdMA
 BS2yATnSOyRHOBsqKz5CdoQcSpGg0t6iRB29gI1RHn1Vmg/BD8jM61HAkgDzVqKbo2aV
 ZDgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=teE1RkLf06th2WphSOuZMvumXdRMNqpZ/4UfoeT+TLg=;
 b=lI9v2IK+Zo9O1HRCEy7FrOomf+7gTNyzbgZiLNQbfvPvqElqoSSk8JxnWXQUiJa/yW
 PDESWPCgVOC+A/e0385yWdZRJzoYz+mFSvZ0SFNtZrkQb0Xx1hsVzzqcwJtQkUWuqzE5
 NhqHVuR8EsQQhGM/ivoGCMjui0Lk+R0hW/wYWaceC5LE4EqQQqBzBlVkq71pXN7FzlV7
 KBiLuJGHgh9LiCx90Czcx18u6GuCNREMSsQYi5VP9hU+CQhg1FvLpWZwPPWSMSpxKSzw
 97xmI6VtCTpVMpzKq0fxjzvxH+00jicFqPjoPNI856DCmL8bAfvDhDnJJnNz0ZlmxhXk
 r5Eg==
X-Gm-Message-State: AOAM531/hPviUubC1UmYwmXoiKdkeSCffMEoYRZhGEMrfUHEnJE1lbBl
 rEuwcKmnUNTP9tzuAM8teVCyrePb26S81bOFWkvunA==
X-Google-Smtp-Source: ABdhPJwQdBKWDfjDyauzdb6okrpBUKpd2VaPQuD59B/F8hIssRnzUcz2LG+41hpzo4hcadFN3SFsflchLVJN8Db0PF0=
X-Received: by 2002:a05:6830:1318:: with SMTP id
 p24mr459997otq.302.1611256159813; 
 Thu, 21 Jan 2021 11:09:19 -0800 (PST)
MIME-Version: 1.0
References: <SN6PR03MB41607B048DE4C7AF40F1F7F0B1A19@SN6PR03MB4160.namprd03.prod.outlook.com>
In-Reply-To: <SN6PR03MB41607B048DE4C7AF40F1F7F0B1A19@SN6PR03MB4160.namprd03.prod.outlook.com>
Date: Thu, 21 Jan 2021 14:09:09 -0500
Message-ID: <CAB__hTSVbsoOpiH=J5u03QwB8bXQziZJYGqAXsTvA-GwtLy6tw@mail.gmail.com>
To: "Mattingly, Rylee" <rmattingly@ou.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC 4 FFT with GNURadio
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0683966457050536533=="
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

--===============0683966457050536533==
Content-Type: multipart/alternative; boundary="0000000000000cf61805b96dcf57"

--0000000000000cf61805b96dcf57
Content-Type: text/plain; charset="UTF-8"

Perhaps try setting the radio SPP = FFT length?

On Thu, Jan 21, 2021 at 10:38 AM Mattingly, Rylee via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I am trying (and failing) to get an RFNoC image with the provided FFT
> working with GNURadio. I am using an X310 connected with a 1Gig ethernet
> and building images in the HG configuration.
> I used the knowledge base article: "Getting Started with RFNoC in UHD 4.0"
> (linked here: https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0)
> to add the FFT to the default image.
> The resulting image core with FFT can be found here:
> https://pastebin.com/xLqyx7qS
>
> The uhd probe shows the fft correctly connected to through its own SEP.
> However, when I attempt to run a flowgraph containing the FFT I get a
> recv() timeout error and then blocks will not flush unitl the USRP is
> reset. One of the many flow graphs I have tried, and the consistent error
> are shown in the screenshots here: https://pasteboard.co/JKFUlrH.png and
> here: https://pasteboard.co/JKFTHji.png
>
> I then tried using the UHD Python API deriving from the example shown in
> the GRCon20 session "Exploring RFNoC with the UHD Python API" by Aaron
> Rossetto. Here I find that a static loopback example like Aaron presented
> with the FFT worked with one length of samples but trying to extend that
> for streaming from the radio creates the same behavior that is exhibited
> with GNURadio. The only way that I can get the FFT to execute correctly is
> if I stream exactly one FFT length of samples. Any larger number of samples
> from the radio (even length multiple) will crash the block and requires a
> power cycle to be able to flush again.
>
> Loopback example code: https://pastebin.com/03dScZvB
> Streaming test code: https://pastebin.com/WQRn7UhH
>
> I have been able to build and use custom RFNoC blocks sucessfully with
> GNURadio on this installation of UHD 4.0, GNURadio 3.8 and gr-ettus.
>
> Thank you,
>
> Rylee
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000cf61805b96dcf57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Perhaps try setting the radio SPP =3D FFT length?</div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, J=
an 21, 2021 at 10:38 AM Mattingly, Rylee via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hi all, </div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<div><br>
</div>
<div>I am trying (and failing) to get an RFNoC image with the provided FFT =
working with GNURadio. I am using an X310 connected with a 1Gig ethernet an=
d building images in the HG configuration.</div>
<div>I used the knowledge base article: &quot;Getting Started with RFNoC in=
 UHD 4.0&quot; (linked here: <a href=3D"https://kb.ettus.com/Getting_Starte=
d_with_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.ettus.com/Getting_Sta=
rted_with_RFNoC_in_UHD_4.0</a>) to add the FFT to the default image.</div>
<div>The resulting image core with FFT can be found here: <a href=3D"https:=
//pastebin.com/xLqyx7qS" target=3D"_blank">https://pastebin.com/xLqyx7qS</a=
></div>
<div><br>
</div>
<div>The uhd probe shows the fft correctly connected to through its own SEP=
. However, when I attempt to run a flowgraph containing the FFT I get a rec=
v() timeout error and then blocks will not flush unitl the USRP is reset. O=
ne of the many flow graphs I have
 tried, and the consistent error are shown in the screenshots here: <a href=
=3D"https://pasteboard.co/JKFUlrH.png" target=3D"_blank">https://pasteboard=
.co/JKFUlrH.png</a> and here: <a href=3D"https://pasteboard.co/JKFTHji.png"=
 target=3D"_blank">https://pasteboard.co/JKFTHji.png</a></div>
<div><br>
</div>
<div>I then tried using the UHD Python API deriving from the example shown =
in the GRCon20 session &quot;Exploring RFNoC with the UHD Python API&quot; =
by Aaron Rossetto. Here I find that a static loopback example like Aaron pr=
esented with the FFT worked with one length
 of samples but trying to extend that for streaming from the radio creates =
the same behavior that is exhibited with GNURadio. The only way that I can =
get the FFT to execute correctly is if I stream exactly one FFT length of s=
amples. Any larger number of samples
 from the radio (even length multiple) will crash the block and requires a =
power cycle to be able to flush again.</div>
<div><br>
</div>
<div>Loopback example code: <a href=3D"https://pastebin.com/03dScZvB" targe=
t=3D"_blank">https://pastebin.com/03dScZvB</a></div>
<div>Streaming test code: <a href=3D"https://pastebin.com/WQRn7UhH" target=
=3D"_blank">https://pastebin.com/WQRn7UhH</a></div>
<div><br>
</div>
<div>I have been able to build and use custom RFNoC blocks sucessfully with=
 GNURadio on this installation of UHD 4.0, GNURadio 3.8 and gr-ettus.</div>
<div><br>
</div>
<div>Thank you,</div>
<div><br>
</div>
<div>Rylee</div>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000cf61805b96dcf57--


--===============0683966457050536533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0683966457050536533==--

