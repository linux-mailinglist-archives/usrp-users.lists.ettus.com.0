Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 033872B8618
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 22:00:19 +0100 (CET)
Received: from [::1] (port=58676 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfUYd-0003Hi-QM; Wed, 18 Nov 2020 16:00:03 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:35669)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kfUYa-0003DT-43
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 16:00:00 -0500
Received: by mail-ot1-f49.google.com with SMTP id n11so3198161ota.2
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 12:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OX3g8efA4xEqvzXreWFv0wU+4gB+RnKankzR7/WB1z4=;
 b=2J5I0DWXAvrPiyMK/NX6+GomxZTxY2NRHU2c1mNIlprWZJvRiT2NxQSokI/mFtgRWk
 jnOIyyJFd+UNhXl5DO0i40zcoC/ENocb1au7X28p3hutBziW581Bs0i7NzzbNgRK7pbK
 kNM7ydh4M6ALkeCG7symmluqiHS2aM1kMVZ0g0PFsNTNgqTtjRfiuSDFxdmMqwAllIl6
 IikQ2S5u5b4qFpGioWO1WpmsJIoRnzeSrC4i5ryY/TG/Kyr7/L7vw1e/GhmBYymVbTkD
 ZyJH5cFDDy63ADfe4ZwEVW4dxgTAvlanEuIep7E7muiLAoyYCEAqH/5CD/vHuCFHvv+F
 vFxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OX3g8efA4xEqvzXreWFv0wU+4gB+RnKankzR7/WB1z4=;
 b=bxcACHeAZK07vwvnO34i3brgrqRqlvSmsH/Ztkq0hAUT9kx1OySAqrejaojjsS77oX
 eqRRxJneBqdW2hmvlgLII9zEAQcHzvzDmYRY9CacO/RCN3O2SKrkWctGxw4RxGN4pHke
 DbAKqiBlbK5Q+nm9RTZ8MIaPz9ICIwGvz0jREklTe1Q9DUGZDCXjUv12IHuuhikGxUh/
 UrE1EChEba+qe5vqWzJ06kaJ7DwqpxfyJxn7POHT/8gsn8H2iGPwA8Zs299qNMIK82On
 3fJF8jRk/+6MXSucTquMCNOND6pabGk0KWaFwOlcHy5EPfMQzC2s9wRt3YAfbFQnbI+B
 sSGw==
X-Gm-Message-State: AOAM531XlU/iJAvOs1Pqvhou6t4Ky5uk8dKdrLqxXJGKvEawX3jl+NYI
 C95yFJ1Ejc8NanhNpij1DI5AEtIlA8Xlpc3utHB/uyur
X-Google-Smtp-Source: ABdhPJyVx1Hwmgfpr4sWClSDqR3pDfzbaL+Xf38uVcXGthFkCcdc3iMT1hZeILhZAWrnipmy+azfbkwls3Vl+6wQopw=
X-Received: by 2002:a9d:470c:: with SMTP id a12mr8157306otf.161.1605733159352; 
 Wed, 18 Nov 2020 12:59:19 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTuHFM-TE=s2DvMzZ9MjUCG0b6qJntW3cdCACD1oBmCJQ@mail.gmail.com>
In-Reply-To: <CAB__hTTuHFM-TE=s2DvMzZ9MjUCG0b6qJntW3cdCACD1oBmCJQ@mail.gmail.com>
Date: Wed, 18 Nov 2020 14:59:08 -0600
Message-ID: <CAFche=g7f0piVrd0cVZ0L8NEm9+WFDCj1ntFt-4aK8tSHoq+HA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] rfnoc_image_builder with Ettus blocks
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============2169554226621952022=="
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

--===============2169554226621952022==
Content-Type: multipart/alternative; boundary="00000000000091553905b467e28c"

--00000000000091553905b467e28c
Content-Type: text/plain; charset="UTF-8"

 Rob,

The -I option is meant for out-of-tree blocks, which are supposed to follow
the same structure as the example. The switchboard.yml file is missing a
line that indicates where its makefile.srcs is:

makefile_srcs:
"${fpga_lib_dir}/blocks/rfnoc_block_switchboard/Makefile.srcs"

See one of the other in-tree RFNoC blocks for an example (e.g.,
uhd/host/include/uhd/rfnoc/blocks/fir_filter.yml). Once you add that then
you shouldn't need to specify it using -I. I'll see that switchboard.yml
gets updated.

Thanks,

Wade

On Wed, Nov 18, 2020 at 1:10 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I'm wondering what is the intended procedure for building an FPGA image
> using non-default Ettus RFNoC blocks in RFNoC 4.0.  I am referring to using
> Ettus-developed blocks other than Radio, DDC, DUC, and Replay which by
> default are included (see Makefile.n3xx.inc which mentions that only these
> default blocks are included).
>
> I am trying to include the Ettus switchboard block in my image and I get
> an error that this block cannot be found.  If I add a command line option
> "-I" to add an include folder to the build, this still does not work (see
> error below).  This command line option seems to expect an "fpga" subfolder
> which does not exist for the switchboard block.
>
> However, if I directly modify Makefile.n3xx.inc to add the switchboard
> block in the same way as DDC, it works.  But, this does not seem to me to
> be the intended way of doing things. Is there a better way?
> Rob
>
> ************ HERE is the command I issue
> $ rfnoc_image_builder -y n310_pulse_det_6_rfnoc_image_core.yml -I ./ -F
> /data/rkossler/uhd/UHD-4.0/uhd/fpga/ -d n310  -t N310_XG -I
> /data/rkossler/uhd/UHD-4.0/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_switchboard/
>
> ************ HERE is the error message I get.
> Makefile.n3xx.inc:53:
> /data/rkossler/uhd/UHD-4.0/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_switchboard/fpga/Makefile.srcs:
> No such file or directory
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000091553905b467e28c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>Rob,</div><div><br></div><div>The -I option is meant for=20
out-of-tree blocks, which are supposed to follow the same structure as=20
the example. The switchboard.yml file is missing a line that indicates=20
where its makefile.srcs is:<br></div><div><br></div><div>makefile_srcs: &qu=
ot;${fpga_lib_dir}/blocks/rfnoc_block_switchboard/Makefile.srcs&quot;</div>=
<div><br></div><div>See one of the other in-tree RFNoC blocks for an exampl=
e (e.g., uhd/host/include/uhd/rfnoc/blocks/fir_filter.yml).
 Once you add that then you shouldn&#39;t need to specify it using -I. I&#3=
9;ll=20
see that switchboard.yml gets updated.</div><div><br></div><div>Thanks,</di=
v><div><br></div><div>Wade</div>

</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Nov 18, 2020 at 1:10 PM Rob Kossler via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div>Hi,</div><div>I&#39;m wondering what is the intended procedure for b=
uilding an FPGA image using non-default Ettus RFNoC blocks in RFNoC 4.0.=C2=
=A0 I am referring to using Ettus-developed blocks other than Radio, DDC, D=
UC, and Replay which by default are included (see Makefile.n3xx.inc which m=
entions that only these default blocks are included).=C2=A0=C2=A0</div><div=
><br></div><div>I am trying to include the Ettus switchboard block in my im=
age and I get an error that this block cannot be found.=C2=A0 If I add a co=
mmand line option &quot;-I&quot; to add an include folder to the build, thi=
s still does not work (see error below).=C2=A0 This command line option see=
ms to expect an &quot;fpga&quot; subfolder which does not exist for the swi=
tchboard block.</div><div><br></div><div>However, if I directly modify Make=
file.n3xx.inc to add the switchboard block in the same way as DDC, it works=
.=C2=A0 But, this does not seem to me to be the intended way of doing thing=
s. Is there a better way?=C2=A0</div><div>Rob=C2=A0</div><div><br></div><di=
v>************ HERE is the command I issue<br></div><div>$ rfnoc_image_buil=
der -y n310_pulse_det_6_rfnoc_image_core.yml -I ./ -F /data/rkossler/uhd/UH=
D-4.0/uhd/fpga/ -d n310 =C2=A0-t N310_XG <span style=3D"background-color:rg=
b(255,255,0)">-I /data/rkossler/uhd/UHD-4.0/uhd/fpga/usrp3/lib/rfnoc/blocks=
/rfnoc_block_switchboard/</span><br></div><div><br></div><div>************ =
HERE is the error message I get.</div>Makefile.n3xx.inc:53: <span style=3D"=
background-color:rgb(255,153,0)">/data/rkossler/uhd/UHD-4.0/uhd/fpga/usrp3/=
lib/rfnoc/blocks/rfnoc_block_switchboard/fpga/Makefile.srcs</span>: No such=
 file or directory<br></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000091553905b467e28c--


--===============2169554226621952022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2169554226621952022==--

