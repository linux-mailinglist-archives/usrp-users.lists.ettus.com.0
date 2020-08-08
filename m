Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1AE23F7F1
	for <lists+usrp-users@lfdr.de>; Sat,  8 Aug 2020 16:27:14 +0200 (CEST)
Received: from [::1] (port=45332 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k4PoR-0004lB-M5; Sat, 08 Aug 2020 10:27:07 -0400
Received: from mail-lj1-f175.google.com ([209.85.208.175]:38107)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <vjain0974@gmail.com>) id 1k4PoO-0004hq-8Z
 for usrp-users@lists.ettus.com; Sat, 08 Aug 2020 10:27:04 -0400
Received: by mail-lj1-f175.google.com with SMTP id m22so5056296ljj.5
 for <usrp-users@lists.ettus.com>; Sat, 08 Aug 2020 07:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MyGNDpJhG3bqfRNoHs8BmB/bSCx6yzeDtXj3ikBhyKw=;
 b=JEP1KJHNOERBmemAnlHIc6/k53bYDsx5MQTBXzZ9g4OPVt99OVo0uxqMXsid/Kshnm
 +Cx341OKjWVIGMLt2B3ZuBuJU0cwsPFTcjXB58/6I9oQKkuG4G2H2t4sZhvfVEfWRXv0
 ajauqzVORZa9E6AIPHxtNkegGblokC9QM3nsI0s8tpPzw6iZWmDtcv8nv/nl2hFNLxwu
 P1SKrIMJ7RIurdAYsuiQdiGTECZamnmkGJ3Ao0rkm2My3eUD35KJuKD9V/+2zsW1MiCN
 GnN4GH4nMAQP0RdPzSBCUnoZinJl3EAs4WCKtEfC8i9VrsksetsrOoSB7GGCg6/460VI
 DlZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MyGNDpJhG3bqfRNoHs8BmB/bSCx6yzeDtXj3ikBhyKw=;
 b=daDNv7esv1xj1jEACHOYVWpZgLzqD+jr+ZuyiAY8IYFPYZVuYFYY821Fv96UZlpByZ
 H6FqbZtptH6vCTM9F9WSRBr7rlLBo3yheGRr/YFH+fyf7v07t4qcfvU2LDo8oYNP5sH+
 02u5PnAF7ZrkSQ03OCuwlAX531p31KbvmSFWdbJ1EXcgKfj+gLW+ErJq9a1w4KFjvuHk
 gzBg9H+zyy5HpmsG+8KMvrym5U2a9nAteTBryOHUhtE8Ee9uzX/mHouetUBYSc53WMGb
 rmZIqgPDBC1w8EP0GkOETYjWcVAB0g19UFx+bfwY8WdKRPI9I40ovOVHQmsYAeCF5KgE
 Qiuw==
X-Gm-Message-State: AOAM530rTavsk5tuCCIeO5I4Jf3j2zlnZrIXJRKWclmymu76Z5p3t5yx
 gjxArkfJY0ABmgSJYJqi+lh89bSGSf8E18hpE68qHR8b
X-Google-Smtp-Source: ABdhPJxggQHihIYEmf7FrDemUWo/mDYjs26D3YhpLFGzbcncqxiT6OgDz7xYgHxvbip41B4Vw10GGOQwGbfJKn/uatQ=
X-Received: by 2002:a2e:92c4:: with SMTP id k4mr8767666ljh.238.1596896782586; 
 Sat, 08 Aug 2020 07:26:22 -0700 (PDT)
MIME-Version: 1.0
References: <CALn8ZzkBoAruW4fFNGDKD0fhmi7-nmh_9OsA942wo9cmBECPxg@mail.gmail.com>
 <04dca4c1-59c7-fbc1-fa03-b512bada3d35@ettus.com>
In-Reply-To: <04dca4c1-59c7-fbc1-fa03-b512bada3d35@ettus.com>
Date: Sat, 8 Aug 2020 07:26:11 -0700
Message-ID: <CALn8ZzmSk-4zFFRN2WhGs82a87cx1wMN5rNXUy0cCLsOYnCZHQ@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Unable to see dissected USB CHDR packets in
 Wireshark
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
From: Vikas Jain via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Vikas Jain <vjain0974@gmail.com>
Content-Type: multipart/mixed; boundary="===============4007125151141588875=="
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

--===============4007125151141588875==
Content-Type: multipart/alternative; boundary="0000000000007818bc05ac5e81d5"

--0000000000007818bc05ac5e81d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the suggestion, Marcus. When I right click and do "Decode as",
it is not presenting RFNoC as one of the protocols in the menu list. Will
look at it some more. Could there be any issue with RFNoC not being
registered as a sub-dissector for USB protocol?

On Mon, Aug 3, 2020 at 9:04 AM Marcus M=C3=BCller via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Vikas,
>
> the ZPU dissector shouldn't help you (IIRC, there's no DUDEBRO protocol
> between host and B2xx). However, yes, the RFNoC dissector is what has
> become of the CHDR dissector.
>
> When I look at your screenshot, it looks to me as if Wireshark wasn't
> told to actually decode the packets as RFNoC. Could you try right click
> -> Decode as... and try that?
>
> Best regards,
>
> Marcus
>
> On 02.08.20 17:49, Vikas Jain via USRP-users wrote:
> > Hi All,
> >
> > I am using a B210 running UHD implementation corresponding to the SHA
> > commit (457192600b3c51d4ddfccac222f2a19d1a5b4995) on the master. Releva=
nt
> > git log snippet below:
> >
> > =3D=3D=3D
> > commit 457192600b3c51d4ddfccac222f2a19d1a5b4995
> > Author: Brent Stapleton <brent.stapleton@ettus.com>
> > Date:   Mon Jan 6 12:19:56 2020 -0800
> >
> >     images: update FPGA image packages for RFNoC
> >
> >     Updating FPGA image packages, filesystems, and submodule pointer to
> >     include recent RFNoC changes.
> > =3D=3D=3D
> >
> > I am running the pdsch_enodeb example program (in srsLTE) which runs on
> my
> > Linux box and transmits a certain waveform over USB connected to B210. =
I
> > captured the I/Q stream USB packets on the usbmon interface using
> wireshark
> > and noticed that the I/Q data packets are not getting parsed by the
> > dissector. I have installed both the rfnoc.so and zpu.so dissector
> plugins
> > in the appropriate folders that wireshark is able to see (see attached
> jpeg
> > showing the plugins visible to wireshark). I am using wireshark version
> 3.2.
> >
> > I have also attached a png file showing the wireshark output with the I=
/Q
> > data USB packets captured but not being interpreted. Not sure if I am
> > missing something. Appreciate any help or pointers to address this issu=
e.
> >
> >
> > Thanks.
> >
> > PS: I was looking at the UHD git log history and noticed the following
> > commit wherein the tools/dissectors/packet-chdr.c file (which used to
> > earlier contain the CHDR dissector implementation) was removed. I had
> used
> > earlier UHD implementations which did not had this change and was able =
to
> > see the USB packets being dissected in wireshark.
> >
> > --
> > commit 9f29b9a556634e41d13fa298f9634b67fdd0a749
> > Author: Alex Williams <alex.williams@ni.com>
> > Date:   Tue Jul 30 19:45:58 2019 -0700
> >
> >     tools: Update dissectors for Wireshark major version 3, new CHDR
> >
> >     Dissectors may now be incompatible with earlier versions.
> >     Fixes ZPU dissector.
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007818bc05ac5e81d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the suggestion, Marcus. When I right click and =
do &quot;Decode as&quot;, it is not presenting RFNoC as one of the protocol=
s in the menu list. Will look at it some more. Could=C2=A0there be any issu=
e with RFNoC not being registered as a sub-dissector for USB protocol?</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, Aug 3, 2020 at 9:04 AM Marcus M=C3=BCller via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Vikas,<br>
<br>
the ZPU dissector shouldn&#39;t help you (IIRC, there&#39;s no DUDEBRO prot=
ocol<br>
between host and B2xx). However, yes, the RFNoC dissector is what has<br>
become of the CHDR dissector.<br>
<br>
When I look at your screenshot, it looks to me as if Wireshark wasn&#39;t<b=
r>
told to actually decode the packets as RFNoC. Could you try right click<br>
-&gt; Decode as... and try that?<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
On 02.08.20 17:49, Vikas Jain via USRP-users wrote:<br>
&gt; Hi All,<br>
&gt;<br>
&gt; I am using a B210 running UHD implementation corresponding to the SHA<=
br>
&gt; commit (457192600b3c51d4ddfccac222f2a19d1a5b4995) on the master. Relev=
ant<br>
&gt; git log snippet below:<br>
&gt;<br>
&gt; =3D=3D=3D<br>
&gt; commit 457192600b3c51d4ddfccac222f2a19d1a5b4995<br>
&gt; Author: Brent Stapleton &lt;<a href=3D"mailto:brent.stapleton@ettus.co=
m" target=3D"_blank">brent.stapleton@ettus.com</a>&gt;<br>
&gt; Date:=C2=A0 =C2=A0Mon Jan 6 12:19:56 2020 -0800<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0images: update FPGA image packages for RFNoC<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Updating FPGA image packages, filesystems, and subm=
odule pointer to<br>
&gt;=C2=A0 =C2=A0 =C2=A0include recent RFNoC changes.<br>
&gt; =3D=3D=3D<br>
&gt;<br>
&gt; I am running the pdsch_enodeb example program (in srsLTE) which runs o=
n my<br>
&gt; Linux box and transmits a certain waveform over USB connected to B210.=
 I<br>
&gt; captured the I/Q stream USB packets on the usbmon interface using wire=
shark<br>
&gt; and noticed that the I/Q data packets are not getting parsed by the<br=
>
&gt; dissector. I have installed both the rfnoc.so and zpu.so dissector plu=
gins<br>
&gt; in the appropriate folders that wireshark is able to see (see attached=
 jpeg<br>
&gt; showing the plugins visible to wireshark). I am using wireshark versio=
n 3.2.<br>
&gt;<br>
&gt; I have also attached a png file showing the wireshark output with the =
I/Q<br>
&gt; data USB packets captured but not being interpreted. Not sure if I am<=
br>
&gt; missing something. Appreciate any help or pointers to address this iss=
ue.<br>
&gt;<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt; PS: I was looking at the UHD git log history and noticed the following=
<br>
&gt; commit wherein the tools/dissectors/packet-chdr.c file (which used to<=
br>
&gt; earlier contain the CHDR dissector implementation) was removed. I had =
used<br>
&gt; earlier UHD implementations which did not had this change and was able=
 to<br>
&gt; see the USB packets being dissected in wireshark.<br>
&gt;<br>
&gt; --<br>
&gt; commit 9f29b9a556634e41d13fa298f9634b67fdd0a749<br>
&gt; Author: Alex Williams &lt;<a href=3D"mailto:alex.williams@ni.com" targ=
et=3D"_blank">alex.williams@ni.com</a>&gt;<br>
&gt; Date:=C2=A0 =C2=A0Tue Jul 30 19:45:58 2019 -0700<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0tools: Update dissectors for Wireshark major versio=
n 3, new CHDR<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Dissectors may now be incompatible with earlier ver=
sions.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Fixes ZPU dissector.<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000007818bc05ac5e81d5--


--===============4007125151141588875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4007125151141588875==--

