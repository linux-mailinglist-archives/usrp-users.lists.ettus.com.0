Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D6D2C366A
	for <lists+usrp-users@lfdr.de>; Wed, 25 Nov 2020 03:04:04 +0100 (CET)
Received: from [::1] (port=37630 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khkA4-0004Sj-Lh; Tue, 24 Nov 2020 21:04:00 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:44872)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1khkA0-0004Ml-Vw
 for USRP-users@lists.ettus.com; Tue, 24 Nov 2020 21:03:57 -0500
Received: by mail-ot1-f47.google.com with SMTP id f16so809834otl.11
 for <USRP-users@lists.ettus.com>; Tue, 24 Nov 2020 18:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xtkR7cEd242VVLgKUHeQsy4gwd+PYC/uYQ7MxW7ZokA=;
 b=OcG/eu6bu9uWL3tAXyeGoNEqpw0cazO5MUTEAVrFHOVvfPKDuQuQp968QhmweEZK6G
 HgmJyCnBbeFYSBfUkTxf46BhnRmf0Rr7cbW0nXrW1Tarh48qPzW8r1GGQTMRl4wyo48t
 SMUUsagKSYHCrVMid0eXomqxrU6nDgmX9JCHK9q82JdHK5go1yDKjUuAaSUPX3RKscvN
 NyuUJEHKDGi6nFHbSQ+pYnn4pauoUOqLNBsKfPtFIbcQlk2AeuPz+uAlTke0/P8tBvYG
 iiS5cciwmGS6rLuLY2kiX6/zRFL1ilV24dU77ohPOBTz/J7S7HK3SYIsXt8PuyPhc2dK
 bzZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xtkR7cEd242VVLgKUHeQsy4gwd+PYC/uYQ7MxW7ZokA=;
 b=EyXd4nSR9oRfYH4PYwZ1J+ZIcOCHvUgXCLyj2Q5CVAYubWsZj61PLUoNSxddilKwpG
 q6/SHplLuJNtxe1qSisHlUT1Qjyu+HojorXoUtgZ53zw9W3dmgj1ewFVSYwILLlw0prt
 VnGWoInw3tvjlIT+JRrc35hGvu+POqzcfbrksGe0zI51KY/tglJucvDlIStqnVEVZOzo
 hXlLRIz4/WWyt83H2nXpVZ0ZbM5UsPndZoF50YN05CHfePW7elb+IG4qF5R+vHCdrcI4
 OkSpzWAna7K8nnH0o1y1bkYM/5+tismwxZGGw++wlhsQKlEHHIwvmk/xM6wVI1I+0KwF
 z4tA==
X-Gm-Message-State: AOAM5320UKtaPG7Ml6vekZ3JNeDnJ1yhuNQugHUNHr9AoFnzNxr+Wl9J
 71TD7Evv95Jht6OurXoGxVTqFVQYMgvUeWho4/3B3ZQb
X-Google-Smtp-Source: ABdhPJyMS4I+z6q3pGlrRH/6pYzYF1gDjZT8woolL5qk35W6BgZUvPRFAdpm/F0ixGvspmXHtnzRgZQSRbCV7+6lWzY=
X-Received: by 2002:a9d:39b7:: with SMTP id y52mr1274427otb.28.1606269796284; 
 Tue, 24 Nov 2020 18:03:16 -0800 (PST)
MIME-Version: 1.0
References: <CA+JMMq-X7SQHT=rFx_x=hW4jOdjUG9wA1p=_LbqDt4G4eH=wFw@mail.gmail.com>
In-Reply-To: <CA+JMMq-X7SQHT=rFx_x=hW4jOdjUG9wA1p=_LbqDt4G4eH=wFw@mail.gmail.com>
Date: Tue, 24 Nov 2020 20:03:08 -0600
Message-ID: <CAFche=irF8Syyi1qmKGh9PoyHZRuj1_tnz=iU=WfZQko9nxEyQ@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD 4.0 RFNoC migration questions
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
Content-Type: multipart/mixed; boundary="===============3915573665438421972=="
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

--===============3915573665438421972==
Content-Type: multipart/alternative; boundary="0000000000009f088d05b4e4d4b2"

--0000000000009f088d05b4e4d4b2
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

Maybe others will chime in but I'll share what I know. The intent was to
have a new block tool that would generate Verilog and C++ templates for a
complete block, but it wasn't completely finished for the UHD 4.0 release.
It currently generates all the HDL, but register generation and the
software template generation wasn't completed. That's why there's a
"registers" section in the YAML. I'm not familiar with the plans regarding
merging the modtool and block_tool.

As for rfnoc_chdr_clk and ce_clk, you are correct. These are analogous to
bus_clk and ce_clk in UHD 3.15 and earlier. In some cases, the clock used
for DSP needs to be faster than rfnoc_chdr_clk, so some blocks allow you to
use a different clock (ce_clk) for the internal DSP. In other blocks this
isn't necessary, often because they can keep up with the full rate of
rfnoc_chdr_clk. The name "ce_clk" in UHD 4.0 is arbitrary (you can rename
it to whatever you want for a block) but the rfnoc_chdr_clk is required by
each block.

Thanks,

Wade

On Mon, Nov 23, 2020 at 7:31 PM Nick Foster via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Just had a few q's regarding RFNoC in UHD 4.0 as I migrate my applications
> to it.
>
>
>    1. In the style of a tedious conference Q&A session, this is more of a
>    comment than a question: I noticed NoCScript is dead: great! But it sure
>    would be nice if there were something which filled the role of obviating
>    the need for explicit block controllers for simple blocks.
>    2. I noticed both the "registers" sections of the YAML definitions are
>    unused in stock UHD blocks and unlooked-for in rfnoc_blocktool's
>    templating process. I also noticed a lot of <block_name>_regs.vh
>    register definition files in the RFNoC Verilog blocks included in UHD,
>    which look suspiciously like autogenerated boilerplate. Seems like
>    something which would be reasonably straightforward (I say, having not done
>    it myself) to implement in rfnoc_blocktool. What am I missing?
>    3. I'm a little unclear on the difference between the rfnoc_chdr clock
>    and ce_clk. Some block definitions just use one, some use both. I'm
>    assuming the rfnoc_chdr clock is equivalent to the old bus_clk. Is the
>    lack of a ce_clk in the block definition just to avoid having to route
>    ce_clk to logic which doesn't require it? Is ce_clk decoupled entirely
>    from radio_clk now on X310?
>    4. Is there a plan to integrate rfnoc_modtool and rfnoc_blocktool? At
>    least within the same repository? The overlapping functionality between
>    them is confusing. It would be a huge reduction in boilerplate madness if a
>    single YAML block definition could result in both Verilog blocks and
>    coordinated C++ block controllers being generated.
>
> Thanks for all the work on this: UHD 4.0 looks like a major improvement.
>
> Nick
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009f088d05b4e4d4b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Nick,</div><div><br></div><div>Maybe others will c=
hime in but I&#39;ll share what I know. The intent was to have a new block =
tool that would generate Verilog and C++ templates for a complete block, bu=
t it wasn&#39;t completely finished for the UHD 4.0 release. It currently g=
enerates all the HDL, but register generation and the software template gen=
eration wasn&#39;t completed. That&#39;s why there&#39;s a &quot;registers&=
quot; section in the YAML. I&#39;m not familiar with the plans regarding me=
rging the modtool and block_tool.</div><div><br></div><div>As for rfnoc_chd=
r_clk and ce_clk, you are correct. These are analogous to bus_clk and ce_cl=
k in UHD 3.15 and earlier. In some cases, the clock used for DSP needs to b=
e faster than rfnoc_chdr_clk, so some blocks allow you to use a different c=
lock (ce_clk) for the internal DSP. In other blocks this isn&#39;t necessar=
y, often because they can keep up with the full rate of rfnoc_chdr_clk. The=
 name &quot;ce_clk&quot; in UHD 4.0 is arbitrary (you can rename it to what=
ever you want for a block) but the rfnoc_chdr_clk is required by each block=
.</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon, Nov 23, 2020 at 7:31 PM Nick Foster via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>Just had a few q&#39;s regarding RFNoC in UHD 4.0 as I migrate my app=
lications to it.</div><div><br></div><div><ol><li>In the style of a tedious=
 conference Q&amp;A session, this is more of a comment than a question: I n=
oticed NoCScript is dead: great! But it sure would be nice if there were so=
mething which filled the role of obviating the need for explicit block cont=
rollers for simple blocks.<br></li><li>I noticed both the &quot;<span style=
=3D"font-family:monospace">registers</span>&quot; sections of the YAML defi=
nitions are unused in stock UHD blocks and unlooked-for in <span style=3D"f=
ont-family:monospace">rfnoc_blocktool</span>&#39;s templating process. I al=
so noticed a lot of <font face=3D"monospace">&lt;block_name&gt;_regs.vh<fon=
t face=3D"arial,sans-serif"> register definition files in the RFNoC Verilog=
 blocks included in UHD, which look suspiciously like autogenerated boilerp=
late. </font></font>Seems like something which would be reasonably straight=
forward (I say, having not done it myself) to implement in <font face=3D"mo=
nospace">rfnoc_blocktool<font face=3D"arial,sans-serif">. What am I missing=
?</font></font></li><li><font face=3D"monospace"><font face=3D"arial,sans-s=
erif">I&#39;m a little unclear on the difference between the <span style=3D=
"font-family:monospace">rfnoc_chdr</span> clock and <font face=3D"monospace=
">ce_clk</font>. Some block definitions just use one, some use both. I&#39;=
m assuming the <font face=3D"monospace">rfnoc_chdr</font> clock is equivale=
nt to the old <font face=3D"monospace">bus_clk<font face=3D"arial,sans-seri=
f">. Is the lack of a ce_clk in the block definition just to avoid having t=
o route <span style=3D"font-family:monospace">ce_clk</span> to logic which =
doesn&#39;t require it? Is <span style=3D"font-family:monospace">ce_clk</sp=
an> decoupled entirely from <span style=3D"font-family:monospace">radio_clk=
</span> now on X310?</font></font></font></font></li><li><font face=3D"mono=
space"><font face=3D"arial,sans-serif"><font face=3D"monospace"><font face=
=3D"arial,sans-serif">Is there a plan to integrate <font face=3D"monospace"=
>rfnoc_modtool<font face=3D"arial,sans-serif"> and <font face=3D"monospace"=
>rfnoc_blocktool<font face=3D"arial,sans-serif">? At least within the same =
repository? The overlapping functionality between them is confusing. It wou=
ld be a huge reduction in boilerplate madness if a single YAML block defini=
tion could result in both Verilog blocks and coordinated C++ block controll=
ers being generated.<br></font></font></font></font></font></font></font></=
font></li></ol><div><font face=3D"arial,sans-serif">Thanks for all the work=
 on this: UHD 4.0 looks like a major improvement.</font></div><div><font fa=
ce=3D"arial,sans-serif"><br></font></div><div><font face=3D"arial,sans-seri=
f">Nick</font><br></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009f088d05b4e4d4b2--


--===============3915573665438421972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3915573665438421972==--

