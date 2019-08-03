Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8150A80811
	for <lists+usrp-users@lfdr.de>; Sat,  3 Aug 2019 21:43:21 +0200 (CEST)
Received: from [::1] (port=45338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htzvz-0000Ob-Ge; Sat, 03 Aug 2019 15:43:19 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:43724)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1htzvw-0000J1-1s
 for usrp-users@lists.ettus.com; Sat, 03 Aug 2019 15:43:16 -0400
Received: by mail-ot1-f53.google.com with SMTP id j11so24233290otp.10
 for <usrp-users@lists.ettus.com>; Sat, 03 Aug 2019 12:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=nGENPsQJg2MK1UDBju9Gp+BBLr9JcnklI3WRhO2ZYvo=;
 b=bgsLzWL6a2U9StGZatCQSrXNWGViyp9tdWgwPxIOrMAEnPg+bQNu9TyecCbr0WbPwf
 yPVTEWoyeq4mU/dymsEQmbaWaAZBEVpfIbkalzGCBS1EPITrZ7FuqxSlRJTKV/TB/Ra/
 JR8Dux7DMxjZ54D9IpIDwVbD2UFU5FHcRV5jUsMUK6QdbHuYJrO/PARdkIwMMTP7TZHO
 kS9ehwXfwMA2/AeHI7ScTOQMa45C2utGGwpEH7RrFb2dIF3Uc+C6wldWwUnJ2LXEcGS5
 kzcRYwgV7Ws93jFzdt2YcKYtFNtQXRCkyX3XUHLfqvp93ybGZdi3/s3DOzIt9irhg6U+
 CoEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=nGENPsQJg2MK1UDBju9Gp+BBLr9JcnklI3WRhO2ZYvo=;
 b=od4DCQ2DCNcViVgfKkbjpYTNJ3YmNOLNo8qkdupPiK+s/aaD6rpTBb7q5Cjw7NlqyS
 +ku2Mx4Xe44OLCpjUJh8xv2GoIE5/+Otnljkjk451g0w4SdsvvEEVEaEnhhuTgQgmAYC
 nwOkLSiwourfLF92efRvy97e1/BnzKH7ZPR5XMUcNj2WlSijhPck79Mh/b0WMS6NejvW
 HH0f6r9P4iEpkR+JXQ+0tkgWNPiCAKbTMTHtEYqyS+ayW/i4z3/x/Q39HV20OWTqzgbO
 YOmJOGWGFnXxClzyW9LZ/JxvWv3GbedpBeTsoah/W6mlreH1l+hvuvf4Z5dulFxDMC1G
 vyyQ==
X-Gm-Message-State: APjAAAXYEHGP8aeJSZLU9VwFL0jbW8UobhQxvWSLAmcz6vyUD/w3kr2h
 rrNxy9LOyPhxNUpZwIagigf/Z9lvQtlmTKUp8q4f/0fIQHs=
X-Google-Smtp-Source: APXvYqxF0PuD5MF2cM5axBY2wZILOwrV0InMpWynWFRU/ZntUVWt6vM90a1Nr5HjmjwA9XJ93YeqqrJT2SPnlu/AoNk=
X-Received: by 2002:a9d:67d6:: with SMTP id c22mr345206otn.327.1564861354735; 
 Sat, 03 Aug 2019 12:42:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQCZmat+4k0zPyyEGuPWB-4dP2ULZNmUCF_if1OuGSxeg@mail.gmail.com>
In-Reply-To: <CAB__hTQCZmat+4k0zPyyEGuPWB-4dP2ULZNmUCF_if1OuGSxeg@mail.gmail.com>
Date: Sat, 3 Aug 2019 15:42:23 -0400
Message-ID: <CAB__hTRsLZcAjU=4ns9MYqUXDsycF_neR=1C2NQwrkJ4E4DPtg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] problem compiling example rfnoc testbench
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4823875073747540920=="
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

--===============4823875073747540920==
Content-Type: multipart/alternative; boundary="0000000000002c2704058f3bad32"

--0000000000002c2704058f3bad32
Content-Type: text/plain; charset="UTF-8"

I forgot to mention 2 things:
1) it originally didn't even get this far.  It is looking for a
non-existant "setup_env.sh" in the ".../top/e300/" folder.  I copied the
"setup_env.sh" from the ".../top/e31x" folder into the ".../top/e300"
folder and then it ran and died as described below.
2) I forgot to mention that the first two lines displayed after running
"make noc_block_gain_tb" were the following which at least confirms that it
is intending to use the e310.  But, I've been trying to navigate the make
files with no success in deciding why it is choosing the xc7k part

Setting up a 64-bit FPGA build environment for the USRP-E31x...
- Vivado: Found (/opt/Xilinx/Vivado/2018.3/bin)

On Sat, Aug 3, 2019 at 3:27 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi,
> I just installed installed the latest UHD master with fpga source and
> installed the 2018.3 Xilinx webpack (I also have a 2017.4 webpack installed
> which was working).  I followed the rfnoc getting started build, but got
> the following error when I tried the command "make noc_block_gain_tb"
>
> # puts "BUILDER: Creating Vivado simulation project part $part_name"
> BUILDER: Creating Vivado simulation project part xc7k410tffg900-2
> # create_project -part $part_name -force $project_name/$project_name
> WARNING: [Device 21-436] No parts matched 'xc7k410tffg900-2'
> ERROR: [Coretcl 2-106] Specified part could not be found.
> INFO: [Common 17-206] Exiting Vivado at Sat Aug  3 14:59:04 2019...
>
> I fully understand that webpack does not support the X310 part, but my
> question is why is the part being selected?  At the point of running the
> rfnoc getting started example, I have not knowingly selected any part.  My
> assumption is that if I could change this part, the make will succeed.
> Does anyone know how I can make it use a webpack compatible part like
> xc7z020?
>
> Thanks.
> Rob
>

--0000000000002c2704058f3bad32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I forgot to mention 2 things:<br><div>1) =
it originally didn&#39;t even get this far.=C2=A0 It is looking for a non-e=
xistant &quot;setup_env.sh&quot; in the &quot;.../top/e300/&quot; folder.=
=C2=A0 I copied the &quot;setup_env.sh&quot; from the &quot;.../top/e31x&qu=
ot; folder into the &quot;.../top/e300&quot; folder and then it ran and die=
d as described below.</div><div>2) I forgot to mention that the first two l=
ines displayed after running &quot;make noc_block_gain_tb&quot; were the fo=
llowing which at least confirms that it is intending to use the e310.=C2=A0=
 But, I&#39;ve been trying to navigate the make files with no success in de=
ciding why it is choosing the xc7k part</div><div><br></div><div>Setting up=
 a 64-bit FPGA build environment for the USRP-E31x...<br>- Vivado: Found (/=
opt/Xilinx/Vivado/2018.3/bin)<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Aug 3, 2019 at 3:27 PM Rob K=
ossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Hi,<br><div>I just installed installed the latest UHD master with fpga s=
ource and installed the 2018.3 Xilinx webpack (I also have a 2017.4 webpack=
 installed which was working).=C2=A0 I followed the rfnoc getting started b=
uild, but got the following error when I tried the command &quot;make noc_b=
lock_gain_tb&quot;</div><div><br></div># puts &quot;BUILDER: Creating Vivad=
o simulation project part $part_name&quot;<br>BUILDER: Creating Vivado simu=
lation project part xc7k410tffg900-2<br># create_project -part $part_name -=
force $project_name/$project_name<br>WARNING: [Device 21-436] No parts matc=
hed &#39;xc7k410tffg900-2&#39;<br>ERROR: [Coretcl 2-106] Specified part cou=
ld not be found.<br>INFO: [Common 17-206] Exiting Vivado at Sat Aug =C2=A03=
 14:59:04 2019...<br><div>=C2=A0</div><div>I fully understand that webpack =
does not support the X310 part, but my question is why is the part being se=
lected?=C2=A0 At the point of running the rfnoc getting started example, I =
have not knowingly selected any part.=C2=A0 My assumption is that if I coul=
d change this part, the make will succeed.=C2=A0 Does anyone know how I can=
 make it use a webpack compatible part like xc7z020?</div><div><br></div><d=
iv>Thanks.</div><div>Rob</div></div>
</blockquote></div></div>

--0000000000002c2704058f3bad32--


--===============4823875073747540920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4823875073747540920==--

