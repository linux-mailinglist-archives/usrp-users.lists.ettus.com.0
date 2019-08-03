Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E32A280879
	for <lists+usrp-users@lfdr.de>; Sat,  3 Aug 2019 23:56:00 +0200 (CEST)
Received: from [::1] (port=54654 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hu20N-0006RT-0W; Sat, 03 Aug 2019 17:55:59 -0400
Received: from sonic303-25.consmr.mail.ne1.yahoo.com ([66.163.188.151]:43451)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hu20J-0006L0-AD
 for usrp-users@lists.ettus.com; Sat, 03 Aug 2019 17:55:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1564869314; bh=iPohKqFotbVaon8LgYxgf5GXIa2bbYz4HDXajMbKqGE=;
 h=Subject:From:To:Date:From:Subject;
 b=pftaVVQ5jtxZ9XWgQm7PJgD/l1/9ZvcJJSdnwNUzeTC2ey7qZxyypjnOf2YYjG4+75VcqPKuQmCSl+ha1WRR2b3qmM5+vNHfjCCYNkVdur9reUQtCsOdhmor47Ov8rKFjYHmVJYzKrLBqGw4thrnhPzD5vdctSl29bn1vs5tuU7djqaEpb796K3hHMKPi6h/kHRuJZCObVgbFn44pZz0DnWzM2da5dzIlGr2uv8AYK8nZq03aGzHJJwn6oI+InjLV3MFoNEBVR2DrkjIu2jl4DoUJdRHhOYf+pklETtLldGCy+9Myihj+Mzrr2z89UQppJMHS0Ev7Lf+nOr3BTrgTg==
X-YMail-OSG: V2zyB2sVM1kE4tb0XIVWUH7SL1poz4dJ92nCB1UgP_xZjkZ94fBotxrCxKYF1Bz
 z2Swwq3J5l8UC3DufNtWWjBZCQs8pf0j8iMDYQBX2JljBCLCwTScGoaAMeK7EuoVLXVRg9MV.U11
 f25f280veLvGzw4kGvpDt3NqvzlM3jgEYTeXwgk7vpuY8tVQHTcqiwWzzzg6f9iEXYZu3vOovgV8
 FvyIBP.WavcnHIXnm9wLQtA.xSrCA3yyPjwYO_AauZumU72AVJJA0vgv2_kOxY2Vh3vuRmuY79O8
 K59_6Wsb93wtuuq5WmgYkw.3AcLXNrRBkU0Q08Y8tBHc0hTtb1jLWLeGj8t6DUVwu.AWfviq1kr5
 mBplRthVh0OCh8ys1x0rieps4JVKq6hqMyLML446.JIScWWuFyktrRpR1z5OErCk0ELxFeMIkZWq
 wFPLT68KhjCMeTCLgS4z0oYnjM0l4zT_9FlMluRVXTztf2amVPL_yXVN9HavUb1uzTeYTQcGM3.Q
 jC1n30XtrENXtSMbHHgnx4m1TjTrYx0EcWk_p.owZazNJoti64oMAOZCMiTR84Ps2uy9cp3TFEkl
 d5nu9IuhS0hnS0hfonA9j1pLr92EGx_PoaTwQjBUjmiJUREN5kmIPuZO.4aCAZqaGQrU6Ciqm8wz
 8207gsUGYtpD6HraU9mKLc9a96WXyuBOy.UQBNNaPQNXGdS_zE0zo33DQiEit4QPt36bQmDXGuDf
 803Nx8efSE7VT.6WwyvjZWjxvLsV4HEOhIyn7C03AP0rwQk_XzMrXS91aUJJHsakmjSAJUVgoZXE
 27rhi0bscj00SOvAyifNbligtEnCcWbq0bT91GJVFfEFe3DUVQYv.1h0LyTsaN9mPhAaP6Q8d6cs
 PTHlKcvJ7jMfXKDl9pclHdz7FCJXiGpNrAGQdhXRF6IXCBQo3HqHbziZeeYWOARx7ICAIXgDwWKk
 4gKHKRZm3KMGcLNP8yXnHElVc09ihRjq6J2L6Z2Gi5nkOH796c94hzrFYXdzZ9ymFm52j8xAdhZN
 Du7K8l.nN8klEgGZdpX7H600.YXb9NMKyzIwsZHsGvSmmg5b5.KQ2kMyWKAWMhoxHknrFzkK2cqb
 kxBDDuhecaiUf0fEZTRvXuBYDcny09iW9LyLgxuRlH7LkgNmUIkiBb5MHI5kuhmVeiwUezp1PnxB
 axVFKMqf9GH4DHk.alN.JoiW5C0BpF3uWNuoZRMuwnAdtJNFkMqYbTMWhLOnYh0zBKek8.SjcpdN
 FO1RVHQ60jZlWSGQez1v.Zo7uRZyHkl9Bcy8OR1ksnZgaoorFzcFLEiqrrwdGndiE
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.ne1.yahoo.com with HTTP; Sat, 3 Aug 2019 21:55:14 +0000
Received: by smtp409.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID ff4b70a0859ef67907cc08b140ce5ff4; 
 Sat, 03 Aug 2019 21:55:13 +0000 (UTC)
Message-ID: <9387d2f5827d7e29a685c7c6623b4edd92452baf.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Sat, 03 Aug 2019 21:55:11 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

The trick to making rfnocnodtool work with Vivado Webpack is to edit 

uhd/fpga-src/usrp3/tools/make/viv_sim_preamble.mak

#change the following line
#PART_ID = xc7k410t/ffg900/-2
PART_ID = xc7z020/clg484/-1

Don't ask how long it took me to figure this out.

I haven't had any luck building any E310 images with the latest version
of UHD, but have something that halfway works using the outdated rfnoc-
devel branch:

commit eec24d7b0442616fdbe9adf6b426959677e67f92 (HEAD -> rfnoc-devel

and the SD image and cross compiler at 
http://files.ettus.com/e3xx_images/e3xx-release-4/
There is a 3.15 pre-release that is better in most ways, except that
one of the radio channels is dead. release 4 produces a bunch of
harmless errors but it does seem to work.


--begin quote--
I forgot to mention 2 things:
1) it originally didn't even get this far.  It is looking for a
non-existant "setup_env.sh" in the ".../top/e300/" folder.  I copied
the
"setup_env.sh" from the ".../top/e31x" folder into the ".../top/e300"
folder and then it ran and died as described below.
2) I forgot to mention that the first two lines displayed after running
"make noc_block_gain_tb" were the following which at least confirms
that it
is intending to use the e310.  But, I've been trying to navigate the
make
files with no success in deciding why it is choosing the xc7k part

Setting up a 64-bit FPGA build environment for the USRP-E31x...
- Vivado: Found (/opt/Xilinx/Vivado/2018.3/bin)

On Sat, Aug 3, 2019 at 3:27 PM Rob Kossler <rkossler at nd.edu> wrote:

> Hi,
> I just installed installed the latest UHD master with fpga source and
> installed the 2018.3 Xilinx webpack (I also have a 2017.4 webpack
installed
> which was working).  I followed the rfnoc getting started build, but
got
> the following error when I tried the command "make noc_block_gain_tb"
>
> # puts "BUILDER: Creating Vivado simulation project part $part_name"
> BUILDER: Creating Vivado simulation project part xc7k410tffg900-2
> # create_project -part $part_name -force $project_name/$project_name
> WARNING: [Device 21-436] No parts matched 'xc7k410tffg900-2'
> ERROR: [Coretcl 2-106] Specified part could not be found.
> INFO: [Common 17-206] Exiting Vivado at Sat Aug  3 14:59:04 2019...
>
> I fully understand that webpack does not support the X310 part, but
my
> question is why is the part being selected?  At the point of running
the
> rfnoc getting started example, I have not knowingly selected any
part.  My
> assumption is that if I could change this part, the make will
succeed.
> Does anyone know how I can make it use a webpack compatible part like
> xc7z020?
>
> Thanks.
> Rob
>


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
