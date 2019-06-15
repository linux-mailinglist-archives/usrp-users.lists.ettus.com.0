Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B712247180
	for <lists+usrp-users@lfdr.de>; Sat, 15 Jun 2019 20:08:50 +0200 (CEST)
Received: from [::1] (port=44790 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hcD6Z-0007Ae-QD; Sat, 15 Jun 2019 14:08:43 -0400
Received: from mail-io1-f44.google.com ([209.85.166.44]:38136)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hcD6V-00075w-Vv
 for USRP-users@lists.ettus.com; Sat, 15 Jun 2019 14:08:40 -0400
Received: by mail-io1-f44.google.com with SMTP id d12so4831690iod.5
 for <USRP-users@lists.ettus.com>; Sat, 15 Jun 2019 11:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a5yDEHxOv16mKrjw4wYdPdJvngj4LFJyMT0guyUWcsg=;
 b=IQLTBkE8M7Qr19UJAMyToKx/wXH5L15XK0PF5Yg2v17dOlQ49MpNa6jxjisSdY4363
 wS7BN2xPWL26xIXwaV19/KuFMdwwBbmjfrddLfuYIZeiBc7ARirq6hLKJfh++p1jT+oh
 RSlnCsz6Fo9eQYzL+g1A0jR/pw/0OXvSdXrcy/UoleHYuk51fLeBYslZ1QJGQK5Zgezo
 yaQ6kcuthVEh/5tH8W4M8guCOp6zRX+uWEvZypDA/JObvzJlp5Kv287RO2SdKE1kSgc2
 aXdcszwBt/fLVVmG8ps6ufRYOWoP+NuHzHbov9eBbz63r2wopgm5YUurVCWX4yEgm2R5
 mMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a5yDEHxOv16mKrjw4wYdPdJvngj4LFJyMT0guyUWcsg=;
 b=ARPECMSPX2X2oPAKU7xfK9TZgE8QQDkSqZjQ0Q81CP/7PqLnlXvDC1QetPXgiUq7va
 dlTO7fqrb5QemuzjFD7CWBIHeX+BkfpK/agkid7yx7glvbGYXIxxFIoQhWOYwsNCTEDz
 x5VO65yOjMy8e3991SLA+ksDIRRabZkhhI0gAlQa7UByFizvJXGdUAOYxOCX+wMzW5+B
 rPPAGuYzaJZ56KIV9yJNfhPWqUS3EKXN+VlDmKIH70aBFl6GRW0mrxefkdLd9O7/ar1Q
 GDFJzsnbPd7su6vzNMKhorY074rk5lIqr9xM6PVHdHhrN0wbyjzxVu4wzPfQgwPa1560
 +28A==
X-Gm-Message-State: APjAAAUEle2DW16r6K2SQVdAiNYNtZpr7SHEZvDMtEJE5pCzGbeS4Nbv
 9XEx/5aHBm3+/uVkHtiW4Evl+RcXdB/3o7SPQ/k=
X-Google-Smtp-Source: APXvYqyOP4QsAsTcyG7LALOhsa8OpC6qPwD37Rdz45RaSiuZWeMT1ppPLEiy/ow/L+rSU13O4erbl7WpeWu/tyQHNHs=
X-Received: by 2002:a5e:de4d:: with SMTP id e13mr65845067ioq.272.1560622079278; 
 Sat, 15 Jun 2019 11:07:59 -0700 (PDT)
MIME-Version: 1.0
References: <CA+JMMq8vzuW8yHWmkzRODB4MvVgYnWjfNauagmnTM3ENZoNxhg@mail.gmail.com>
 <52507679-27D3-4388-8FD2-F666B682F842@gmail.com>
In-Reply-To: <52507679-27D3-4388-8FD2-F666B682F842@gmail.com>
Date: Sat, 15 Jun 2019 11:04:38 -0700
Message-ID: <CA+JMMq_hGfmpCAQ4vLnfjkhSOOV+2+ewhG6PFDcpr1iMzb7kUQ@mail.gmail.com>
To: Ian Buckley <ian.buckley@gmail.com>
Subject: Re: [USRP-users] X310 master clock rate incorrect?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0080067846041865658=="
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

--===============0080067846041865658==
Content-Type: multipart/alternative; boundary="000000000000aa05dd058b60a45f"

--000000000000aa05dd058b60a45f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes to both!. That's what led me to believe the rate was wrong. LFRX is DC
coupled, but the arrangement it's in has the next component in the chain
blocking DC.

I tested with gr-ettus/device3 today, and the bug isn't there. So I think
there's something in the legacy driver.

Nick

On Sat, Jun 15, 2019 at 11:03 AM Ian Buckley <ian.buckley@gmail.com> wrote:

> Go tune WWV, your friendly Federal signal generator?
> (Also isn=E2=80=99t LFRX DC coupled?)
>
> > On Jun 14, 2019, at 11:43 PM, Nick Foster via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > Got a weird one here. I'm using an X310 with UHD 3.14.0.0-87-g4e084337,
> with two LFRX daughterboards installed. Legacy interface with gr-uhd, not
> gr-ettus, just testing things in the field. When I tune to 15MHz sample
> rate at 1Msps, I get a resulting stream that looks for all the world like
> it's coming in at 7.5MHz and 500ksps. Because this is a field deployment,
> and because I don't have immediate access to a signal generator, it's a b=
it
> hard to confirm that. It looks to me (at first blush) like the DDC block =
is
> getting an incorrect master clock rate, and setting its tick rate
> accordingly. When I set the frequency to 30MHz and the sample rate to
> 2Msps, I get the result I'm expecting.
> >
> > I don't believe I'm seeing the same problem with device3/gr-ettus, but
> I'll test that further today. Anyone seen behavior like this before?
> There's also an unexpected DC offset I haven't seen before, if that helps
> jog anyone's memory. Since it's direct-sampled, not zero-IF, any DC offse=
t
> must be the result of the DSP chain.
> >
> > Nick
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000aa05dd058b60a45f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes to both!. That&#39;s what led me to believe the r=
ate was wrong. LFRX is DC coupled, but the arrangement it&#39;s in has the =
next component in the chain blocking DC.</div><div><br></div><div>I tested =
with gr-ettus/device3 today, and the bug isn&#39;t there. So I think there&=
#39;s something in the legacy driver.</div><div><br></div><div>Nick<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Sat, Jun 15, 2019 at 11:03 AM Ian Buckley &lt;<a href=3D"mailto:ian.bu=
ckley@gmail.com">ian.buckley@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Go tune WWV, your friendly Federal si=
gnal generator?<br>
(Also isn=E2=80=99t LFRX DC coupled?)<br>
<br>
&gt; On Jun 14, 2019, at 11:43 PM, Nick Foster via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; Got a weird one here. I&#39;m using an X310 with UHD 3.14.0.0-87-g4e08=
4337, with two LFRX daughterboards installed. Legacy interface with gr-uhd,=
 not gr-ettus, just testing things in the field. When I tune to 15MHz sampl=
e rate at 1Msps, I get a resulting stream that looks for all the world like=
 it&#39;s coming in at 7.5MHz and 500ksps. Because this is a field deployme=
nt, and because I don&#39;t have immediate access to a signal generator, it=
&#39;s a bit hard to confirm that. It looks to me (at first blush) like the=
 DDC block is getting an incorrect master clock rate, and setting its tick =
rate accordingly. When I set the frequency to 30MHz and the sample rate to =
2Msps, I get the result I&#39;m expecting.<br>
&gt; <br>
&gt; I don&#39;t believe I&#39;m seeing the same problem with device3/gr-et=
tus, but I&#39;ll test that further today. Anyone seen behavior like this b=
efore? There&#39;s also an unexpected DC offset I haven&#39;t seen before, =
if that helps jog anyone&#39;s memory. Since it&#39;s direct-sampled, not z=
ero-IF, any DC offset must be the result of the DSP chain.<br>
&gt; <br>
&gt; Nick<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div>

--000000000000aa05dd058b60a45f--


--===============0080067846041865658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0080067846041865658==--

