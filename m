Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBA12AF40A
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 15:49:12 +0100 (CET)
Received: from [::1] (port=48656 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcrQo-0003Mu-M3; Wed, 11 Nov 2020 09:49:06 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:40102)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kcrQk-0003G3-Lu
 for usrp-users@lists.ettus.com; Wed, 11 Nov 2020 09:49:02 -0500
Received: by mail-oi1-f171.google.com with SMTP id m143so2425574oig.7
 for <usrp-users@lists.ettus.com>; Wed, 11 Nov 2020 06:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lEw86TAAOX71Bz0N4Lpbqk4NkSTQLJf1QMYtKDzif0w=;
 b=QJzw6DH9lbdXh32lvi+pe99Lw05SoApyvbPTFMy1wmtQFqfnTKKp9qH9Jw4VXM1x3y
 6SCxkvN4ohy8GU6eUNEp74iXlb7ZlgNXYpyXZQaGwtVXXOHh1xHO+S87OtEpmghSdkRM
 2Fv7g8HLBrnA2r+isfOnbaTVkxZQo9dmKzfSuxuELfnaS24l6vz/yVt7IvdRNROAZEk3
 6D/RYUBKDBbIKaWvhPfEXGFU9oTgChPOjTIeRlq/QaU30PtfhkFq/Cl6MHKyIKWWU5i9
 SxKOxQd/oY1s64URhKQef/aWpkjaOw5z32TDGyCTEG+eeTH2SGPyB+QTRGLH6XrEwOXe
 zyIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lEw86TAAOX71Bz0N4Lpbqk4NkSTQLJf1QMYtKDzif0w=;
 b=GdYEm7VcyaqHkE7nhSEM4h4C99oDNab7tk0soP8Vm5eWt0YeYdbC3dnJEmEI4F7W76
 RON9uEUtFREWyqN/VEQunTz+jFZuc3f/+CLwPAEReaQLRyrMIvg2RrI9Fday0ofWjBNq
 dOQxGVe9H4nRaqt3F9kuc2LwRwKj4Q+J+QAy2RXHsM95zjZClVmg1NhSlyIY77lgstRd
 7xe4IIpJQZzk7+5cDEZTGn2KtFqsnitkquEW1dO92SORKakSMs86cnpMPW/Ra+fk/Wyq
 ppv9emfOnWRcXKzJZsj76uuX5JjkEV+AbFb1c7NwsRgfwN2BcQB5zYf1gbX+5mMDPS7+
 YV/w==
X-Gm-Message-State: AOAM531NNKo+q0W5giGgDK3M9N2JhdZ8VC4pXaLuv0ZYMDfOvphL73ur
 0OZZNJmwi1A1D5dx/Mb3lL4Zhcqc08KMPVvE++3sFQ==
X-Google-Smtp-Source: ABdhPJyZZcnbXTQ69YZMn8WOM4N9gdu644FNbwYlnwEHr8l24aHOoI7m1xxK7w5+b7cl57SfHlCE0Bq2xRmCuBf0DIw=
X-Received: by 2002:aca:4ccc:: with SMTP id z195mr2216233oia.124.1605106101716; 
 Wed, 11 Nov 2020 06:48:21 -0800 (PST)
MIME-Version: 1.0
References: <5d7fbe13-20e4-a896-ee16-24065d4bb8fa.ref@verizon.net>
 <5d7fbe13-20e4-a896-ee16-24065d4bb8fa@verizon.net>
In-Reply-To: <5d7fbe13-20e4-a896-ee16-24065d4bb8fa@verizon.net>
Date: Wed, 11 Nov 2020 09:48:10 -0500
Message-ID: <CAB__hTRLAWb4+ons7BfioVcxjQdB5E5oYRT3k1AcLcXOcU28xQ@mail.gmail.com>
To: Mike <mikerd1@verizon.net>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="0000000000000727e005b3d5e306"
Subject: Re: [USRP-users] RFNOC - noc_block_gain not found
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

--0000000000000727e005b3d5e306
Content-Type: multipart/alternative; boundary="0000000000000727dd05b3d5e304"

--0000000000000727dd05b3d5e304
Content-Type: text/plain; charset="UTF-8"

Mike,
Are you using UHD 3.15?  If so, I suspect that UHD itself is the issue -
particularly the uhd_image_builder.py script. My own experience is that
starting around 3.15, some things changed in the uhd_image_builder.py
script and caused issues in finding OOT files.

Take a look in the python create_oot_include() procedure and you will find
an if/elif statement that looks for Makefile.inc or Makefile.srcs in
various paths in the OOT folder such as rfnoc/ or rfnoc/fpga-src.  Attached
are the files Makefile.inc that I have in my rfnoc/ and rfnoc/fpga-src
folders. You could modify these for your own specifics and re-try the
uhd_image_builder.py script.
Rob

On Wed, Nov 11, 2020 at 9:15 AM Mike via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I've been going through AN-823 (Getting started with RFNoC Development)
> and have successfully gotten through the point of simulating the gain
> test bench with positive results.
>
> I'm attempting to build the FPGA now with the new OOT module. I've
> successfully built with only pre-existing modules and seen it work in my
> hardware (E310).
>
> My command is as follows:
>
> ~/prefix/rfnoc2/src/uhd-fpga/usrp3/tools/scripts$ ./uhd_image_builder.py
> gain ddc fft -t E310_RFNOC -d e31x -I
> /home/mike/prefix/rfnoc2/src/rfnoc-tutorial/rfnoc/
>
> I used the gui command ./uhd_image_builder_gui.py but it does not create
> the correct device type (-d E310 vs -d e31x).
>
> I've tried using "-I /home/mike/prefix/rfnoc2/src/rfnoc-tutorial/" to no
> avail either.
>
> So, it seems like I'm missing a path somewhere in the makefiles that
> keeps it from finding the OOT source.
>
> I know this is probably basic makefile stuff but it's not basic to me.
> I'm just an FPGA guy.
>
> Thanks,
>
> Mike
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000727dd05b3d5e304
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Mike,<div>Are you using UHD 3.15?=C2=A0 I=
f so, I suspect that UHD itself is the issue - particularly the uhd_image_b=
uilder.py script. My own experience is that starting around 3.15, some thin=
gs changed in the uhd_image_builder.py script and caused issues in finding =
OOT files.=C2=A0=C2=A0</div><div><br></div><div>Take a look in the python=
=C2=A0create_oot_include() procedure and you will find an if/elif statement=
 that looks for Makefile.inc or Makefile.srcs in various paths in the OOT f=
older such as rfnoc/ or rfnoc/fpga-src.=C2=A0 Attached are the files Makefi=
le.inc that I have in my rfnoc/ and rfnoc/fpga-src folders. You could modif=
y these for your own specifics and re-try the uhd_image_builder.py script.<=
/div><div>Rob=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, Nov 11, 2020 at 9:15 AM Mike via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Hi,<br>
<br>
I&#39;ve been going through AN-823 (Getting started with RFNoC Development)=
 <br>
and have successfully gotten through the point of simulating the gain <br>
test bench with positive results.<br>
<br>
I&#39;m attempting to build the FPGA now with the new OOT module. I&#39;ve =
<br>
successfully built with only pre-existing modules and seen it work in my <b=
r>
hardware (E310).<br>
<br>
My command is as follows:<br>
<br>
~/prefix/rfnoc2/src/uhd-fpga/usrp3/tools/scripts$ ./uhd_image_builder.py <b=
r>
gain ddc fft -t E310_RFNOC -d e31x -I <br>
/home/mike/prefix/rfnoc2/src/rfnoc-tutorial/rfnoc/<br>
<br>
I used the gui command ./uhd_image_builder_gui.py but it does not create <b=
r>
the correct device type (-d E310 vs -d e31x).<br>
<br>
I&#39;ve tried using &quot;-I /home/mike/prefix/rfnoc2/src/rfnoc-tutorial/&=
quot; to no <br>
avail either.<br>
<br>
So, it seems like I&#39;m missing a path somewhere in the makefiles that <b=
r>
keeps it from finding the OOT source.<br>
<br>
I know this is probably basic makefile stuff but it&#39;s not basic to me.=
=C2=A0 <br>
I&#39;m just an FPGA guy.<br>
<br>
Thanks,<br>
<br>
Mike<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000000727dd05b3d5e304--
--0000000000000727e005b3d5e306
Content-Type: application/octet-stream; name="Makefile.inc"
Content-Disposition: attachment; filename="Makefile.inc"
Content-Transfer-Encoding: base64
Content-ID: <f_khdilh990>
X-Attachment-Id: f_khdilh990

T09UX1NSQ19ESVIgOj0gJChPT1RfRElSKS9mcGdhLXNyYwpPT1RfSVBfRElSIDo9ICQoT09UX0RJ
UikvaXAKT09UX0hMU19ESVIgOj0gJChPT1RfRElSKS9obHMKCmluY2x1ZGUgJChhYnNwYXRoICQo
T09UX1NSQ19ESVIpL01ha2VmaWxlLmluYykKI2luY2x1ZGUgJChhYnNwYXRoICQoT09UX0hMU19E
SVIpL01ha2VmaWxlLmluYykKaW5jbHVkZSAkKGFic3BhdGggJChPT1RfSVBfRElSKS9NYWtlZmls
ZS5pbmMpCg==
--0000000000000727e005b3d5e306
Content-Type: application/octet-stream; name="Makefile.inc"
Content-Disposition: attachment; filename="Makefile.inc"
Content-Transfer-Encoding: base64
Content-ID: <f_khdimjfi1>
X-Attachment-Id: f_khdimjfi1

CiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCiMgUkZO
b0MgU291cmNlcwojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIwoKUkZOT0NfT09UX1NSQ1MgKz0gJChhZGRwcmVmaXggJChPT1RfU1JDX0RJUikvLCBcCm5v
Y19ibG9ja190eGFyYi52IFwKbm9jX2Jsb2NrX3JhZGFyZmlsdGVyNC52IFwKaW5kZXhfc2VsZWN0
LnYgXApheGlfYmlwaGFzZV9uZC52IFwKYXhpX21heF9kZXQudiBcCmZmdF9jb25maWd1cmF0aW9u
LnYgXAppbmRleF96ZXJvLnYgXAptYXRjaGVkX2ZpbHRlcl9yZi52IFwKbWF0Y2hlZF9maWx0ZXIu
diBcCmN3aW5kb3cudiBcCikK
--0000000000000727e005b3d5e306
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--0000000000000727e005b3d5e306--

