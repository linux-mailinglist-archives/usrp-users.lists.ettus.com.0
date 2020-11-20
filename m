Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D597B2BB97F
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 23:59:19 +0100 (CET)
Received: from [::1] (port=51450 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgFN4-000440-JR; Fri, 20 Nov 2020 17:59:14 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:43005)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kgFN0-000406-HF
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 17:59:10 -0500
Received: by mail-ot1-f47.google.com with SMTP id h16so10287904otq.9
 for <usrp-users@lists.ettus.com>; Fri, 20 Nov 2020 14:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zHV75Lapqjom6vWDdkqECOsLmk4lXENm5njYeE0P32Y=;
 b=KOgt4dwW46eX4MYKye8RT3F3rI2S1tmZZtmGkF0D//p9zPwSuoEOx53kdge0EkPqg4
 9o/iZdX3ialmI0ePpN9VZcVdaIuFldmv+/Umc+QAHQLq0LhzHrhM8W4dSezna35E4WVM
 fGyBONs+B0Aj64PLyW39plRvEw/U3LULooDgsIJTFrQ3uyLF9H6TXijGiZL948mVk+3P
 WmETeOh1Cp6O4f/JLC2UWv9Y9d2CAQmbesSvhdaUI5BU1EhRufqCbeJsBlZCQQkfdl5W
 0YBtby291meYFiGYQrzxzO56AQP2vkHAtALIQ3PRfMGWvfqNbOhTh6oO7w7hB7FniLHa
 AVtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zHV75Lapqjom6vWDdkqECOsLmk4lXENm5njYeE0P32Y=;
 b=QVljmmsDukZx77a+cxBOjmtgagMymRJC+BP+M7uIeVOZ4eRyPN40zcTTB4LjdNkAio
 1OLPw60BBE7jejjJgwouh2ifM5Obu/VT1POb1lVESCFn5AFXhbgUBqpuq9wudsBEgrh6
 4XvnseUV4QmfOh0V/ln6QOS6c1DPfv83PYeh1EfmjF5i0YbqfkB1M3zWP90k9uIybAhw
 pTR5P/0A+bJdhz79QNGHLgK4SM7DIcqLo3FkJlylLh1n4nzsjD1dkF2dWl3gI7wmviF/
 sYzpgANsoKHF3CBZYqHNnnAr+nCskvi+75AstnYYv8LDuVYs9OvTvAGCTvLISsrSSiUp
 PTAw==
X-Gm-Message-State: AOAM532KP6KXm4f4ZpjmcS/NN8j1eDK/vInEYbP+a1vWBzO4M+lB0GgX
 hpmh0cA5QbiI8RCTTeYFe6yGflSNL5d0R4wBrmcXI8Dx
X-Google-Smtp-Source: ABdhPJy1p9jRkZTkJH5Ox6GkYthk3nGFEZ/fB95pItYeLu276CLW4rLLD9+KAkqQ0hEqwcKiY6+khkI4d0ZVQJixP3Q=
X-Received: by 2002:a9d:470c:: with SMTP id a12mr16050529otf.161.1605913109835; 
 Fri, 20 Nov 2020 14:58:29 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTEgsfiRZzaYPbQ1THOzNMj2bN0zk34FUn6EckgD0b-6w@mail.gmail.com>
In-Reply-To: <CAB__hTTEgsfiRZzaYPbQ1THOzNMj2bN0zk34FUn6EckgD0b-6w@mail.gmail.com>
Date: Fri, 20 Nov 2020 16:58:19 -0600
Message-ID: <CAFche=gYseEb3uu6Vd=5ECPb8FpJXbN77dxM0CH4KMeW-NmNGA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Struggles using Xilinx IP OOT in RFNoC 4.0
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
Content-Type: multipart/mixed; boundary="===============7423765150024195807=="
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

--===============7423765150024195807==
Content-Type: multipart/alternative; boundary="00000000000073c46c05b491c886"

--00000000000073c46c05b491c886
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

I pulled the cmul module (which uses complex_multiplier.xci) into an OOT
block. I didn't run into any problems. I was able to compile for N310 and
X310 and my OOT simulation worked fine. Here's how I added the
complex_multiplier to my simulation Makefile:

# Include complex_multiplier IP
LIB_IP_DIR = $(BASE_DIR)/../lib/ip
include $(LIB_IP_DIR)/complex_multiplier/Makefile.inc
# Include cmul wrapper
include $(BASE_DIR)/../lib/rfnoc/Makefile.srcs
# Add source files
DESIGN_SRCS += $(abspath \
$(RFNOC_SRC) \
$(LIB_IP_COMPLEX_MULTIPLIER_SRCS) \
)

Thanks,

Wade

On Sat, Sep 19, 2020 at 6:38 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I have been struggling a bit with using Xilinx IP in my OOT blocks
> (structured using rfnoc-example as a guide).  Here are a few of the issues:
>
>    - If I try to use one of the Xilinx IP blocks from Ettus (specifically
>    complex_multiplier.xci), I get an error when I run the test bench if I
>    don't include the xci file in my Makefile.srcs.  So, I copied the Ettus xci
>    to my OOT folder and then the testbench ran fine.  But, then when I tried
>    to build an image, I ran into 2 issues.
>       - First, I get the Vivado error "ERROR: [Common 17-107] Cannot
>       change read-only property 'generate_synth_checkpoint'".  I think this is
>       because there is no automatic conversion of part ID for this IP so I had to
>       modify the IP in Vivado for the correct N310 part number.
>       - Second, then I get a complaint about having 2 complex_multipliers
>       because of the duplicate in the Ettus tree.  So, I'm wondering how I can
>       use an Ettus provided IP in an OOT block without having to copy and rename
>       it.
>       - Note that I also tried just referencing the Ettus-provided
>       complex_multiplier.xci file in my Makefile.srcs (using a relative path from
>       my OOT folder to the Ettus in-tree folder), but then there is an issue
>       while running the testbench related to the in-tree cmul.v
>    - Next, when I tried to use a separate xci file (that was not a
>    duplicate of one that Ettus uses), I included the xci filename in my
>    Makefile.srcs and the testbench ran fine.  However, during build, I had 2
>    issues:
>       - First, I had the same 'generate_synth_checkpoint' issue because
>       my xci file was for the E310 and I was building an image for the N310 and
>       there was no automatic part conversion
>       - Second, after about 8 minutes, the build bombed because it
>       couldn't find my IP. So, somehow the OOT xci build files are not
>       integrating into the overall build correctly (or, more likely, I have
>       something mis-configured)
>
> In any event, I went back to the old trusty build-in-tree method by adding
> my custom IP to the Ettus ../fpga/usrp/lib/ip/ folder and adjusted
> Makefiles accordingly.  Now it builds fine.
>
> Any advice on how to make this work OOT would be appreciated.  Thanks.
> Rob
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000073c46c05b491c886
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>I pulled the cmul mo=
dule (which uses=20
complex_multiplier.xci) into an OOT block. I didn&#39;t run into any proble=
ms. I was able to compile for N310 and X310 and my OOT simulation worked fi=
ne. Here&#39;s how I added the complex_multiplier to my simulation Makefile=
:</div><div><br></div><div># Include complex_multiplier IP<br></div><div></=
div><div>LIB_IP_DIR =3D $(BASE_DIR)/../lib/ip<br>include $(LIB_IP_DIR)/comp=
lex_multiplier/Makefile.inc</div><div># Include cmul wrapper<br></div><div>=
include $(BASE_DIR)/../lib/rfnoc/Makefile.srcs</div><div># Add source files=
<br></div><div>DESIGN_SRCS +=3D $(abspath \</div><div>$(RFNOC_SRC) \</div><=
div>$(LIB_IP_COMPLEX_MULTIPLIER_SRCS) \<br>)<br></div><div><br></div><div>T=
hanks,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 19, 2020 at 6:38 =
PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>I have been strug=
gling a bit with using Xilinx IP in my OOT blocks (structured using rfnoc-e=
xample as a guide).=C2=A0 Here are a few of the issues:</div><div><ul><li>I=
f I try to use one of the Xilinx IP blocks from Ettus (specifically complex=
_multiplier.xci), I get an error when I run the test bench if I don&#39;t i=
nclude the xci file in my Makefile.srcs.=C2=A0 So, I copied the Ettus xci t=
o my OOT folder and then the testbench ran fine.=C2=A0 But, then when I tri=
ed to build an image, I ran into 2 issues.=C2=A0</li><ul><li>First, I get t=
he Vivado error &quot;ERROR: [Common 17-107] Cannot change read-only proper=
ty &#39;generate_synth_checkpoint&#39;&quot;.=C2=A0 I think this is because=
 there is no automatic conversion of part ID for this IP so I had to modify=
 the IP in Vivado for the correct N310 part number.=C2=A0=C2=A0</li><li>Sec=
ond, then I get a complaint about having 2 complex_multipliers because of t=
he duplicate in the Ettus tree.=C2=A0 So, I&#39;m wondering how I can use a=
n Ettus provided IP in an OOT block without having to copy and rename it.</=
li><li>Note that I also tried just referencing the Ettus-provided complex_m=
ultiplier.xci file in my Makefile.srcs (using a relative path from my OOT f=
older to the Ettus in-tree folder), but then there is an issue while runnin=
g the testbench related to the in-tree cmul.v=C2=A0</li></ul><li>Next, when=
 I tried to use a separate xci file (that was not a duplicate of one that E=
ttus uses), I included the xci filename in my Makefile.srcs and the testben=
ch ran fine.=C2=A0 However, during build, I had 2 issues:</li><ul><li>First=
, I had the same &#39;generate_synth_checkpoint&#39; issue because my xci f=
ile was for the E310 and I was building an=C2=A0image for the N310 and ther=
e was no automatic part conversion</li><li>Second, after about 8 minutes, t=
he build bombed because it couldn&#39;t find my IP. So, somehow the OOT xci=
 build files are not integrating into the overall build correctly (or, more=
 likely, I have something mis-configured)</li></ul></ul><div>In any event, =
I went back to the old trusty build-in-tree method by adding my custom IP t=
o the Ettus ../fpga/usrp/lib/ip/ folder and adjusted Makefiles accordingly.=
=C2=A0 Now it builds fine.</div></div><div><br></div><div>Any advice on how=
 to make this work OOT would=C2=A0be appreciated.=C2=A0 Thanks.</div><div>R=
ob</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000073c46c05b491c886--


--===============7423765150024195807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7423765150024195807==--

