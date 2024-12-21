Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0799F9DED
	for <lists+usrp-users@lfdr.de>; Sat, 21 Dec 2024 03:23:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31F0E385D70
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 21:23:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734747818; bh=El+LWjkFMastsuAaWGvwuhR5w72BLnUzM/Ac5+nNXMk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KekmI4jRbrlDYLLYPZ6kIuDcyiA3chljoLmVMQq0q0eCWC/Ex9L9vmhyJFs0tEp6B
	 lo0sa6Xuuunfkzl1Jdo3Jqg4vQMeUlnbPv+xCzZwB8C3gN6lrASbFo7WUgyDANHk9W
	 5OBVLZBr9UO0W9WVnqkYxnt4a7kngFKmexyPQi8smroSBfEv+OLMKjbO3UrNIVyy2F
	 u4QrNQ98aq/QkdDq1i5/FxeTighGT4HS8UB9D8hoWUacRJVE4z3IxsvJKzcZs2kD7y
	 a7WNIESQKU3pbbmfzcGJbkJZEqKHMj7MkTuQzB4NkoOLqiATvjE2EFuJpg1EE6j5fo
	 NZz00HVe/GEQA==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id D6574385D43
	for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 21:22:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="JmukygHp";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e3988fdb580so2136328276.2
        for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 18:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1734747764; x=1735352564; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qmC8+Zm4c6iqXFf1FrErSaNz3x0bIW20kq2eQzky+sc=;
        b=JmukygHpHNOS33TfPW0XvDc7bXSy62yCUruxCd7ZKidm3LmOXPSPWhRPh47dGlMLaU
         b9oHWblTMWsI1CqMLudwkEyafDqUUJCY55y1bzkvBHh+OWeLZczB3VQl4RMbR+2qrnNc
         9OThWo/HR/bGxF2kNaR2FVqKqjsHONnf6jpioquyywj4TDBP25/OpsoO8pjZM4rVnnu9
         G7PEfv+wEBK/G5Gu528Htei0w6wf6fpxWV8EyuP1Zz8iPAYgZEI2Zqy47Fklsb9yoNb9
         4sNnKCYGn6PkgS105CRVOK2XVHuBSwJ5MycIQsg4pp/5QBmRALhaQg3BcKsX4+3e8pkF
         i+1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734747764; x=1735352564;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qmC8+Zm4c6iqXFf1FrErSaNz3x0bIW20kq2eQzky+sc=;
        b=Kbb4mlmvjq/1Ea4l3CMd91LmqBPjdriPeL/bm4ynfAbJrehilQ4kt0Pcs3uxs2kyoP
         LgMejSlmNsbbmHoyjYR0ZFEafMxSuODzxBymcobV2GyRb0qY2MOh0tlbvPYE/glDGXDd
         otst7CziaslqHR347H6T/BFzGJs/xC1K719C8GqaRBWZwzAPg8qfdQ5ZNKhMOQGvuEZx
         Gds2waxVlRaKZrfCG0lyA6Q76GSbB9bN8YdPOya8sCca5SwBFbZ8E9w45hUCvok5mu0V
         Fm8MRx0rGQ4ozIpQ5XgISjUWlN+cns/xztP5YP9eKalzmg7mMD6MjhQBrafMs6E0PLr+
         sNSQ==
X-Gm-Message-State: AOJu0Yww8F6pKqD7T3KZR1knzPYr7BAjtqPwMCFOwjG4qkYek6L+8OLJ
	vZEPmmStnmiqXeUJaQH3A7kfAocjKxDDuEH4G/zxzXVr/kRRA5T3UiEVOg4+hHj8zgT6Kynheiz
	fp87Zk+/dmybarAc/YzABDeWk8yqR7JjmYMMo32eF
X-Gm-Gg: ASbGnctPZ9Wnqsy7uydMXr6oL52mcyHfexp2+6M9HwN9WTuuNk08TSBdcJHdIzE29KK
	8/ojaM15Qgolw4bFaOMDtPbhrMZ9sN/IH3PWnIQ==
X-Google-Smtp-Source: AGHT+IHBXeqc/53gFZu+etAhaR9/GA2tAeAsefRhdMUHDLA48HAQaC1FH89QtgFoUj7VbgPmTuuQ+W7ttc0Zp1BpyDQ=
X-Received: by 2002:a05:6902:2413:b0:e4a:fc25:30ca with SMTP id
 3f1490d57ef6-e538c285b80mr5114332276.24.1734747764236; Fri, 20 Dec 2024
 18:22:44 -0800 (PST)
MIME-Version: 1.0
References: <CA+0p0ZR12K_ExioWxeC9yhXe-MUK75QqiNa0U1OvPwrFFb1i5w@mail.gmail.com>
In-Reply-To: <CA+0p0ZR12K_ExioWxeC9yhXe-MUK75QqiNa0U1OvPwrFFb1i5w@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 20 Dec 2024 20:22:28 -0600
Message-ID: <CAFche=hcoUPrUuziHGOF+SWQVHbdGQ_r+PeQELSZ0EFq1RNsqg@mail.gmail.com>
To: Andrew D <sciensfpgaeng@gmail.com>
Message-ID-Hash: F6RVIQN3Y2Y5NJQ554R5I4N2GHMHJUNM
X-Message-ID-Hash: F6RVIQN3Y2Y5NJQ554R5I4N2GHMHJUNM
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users mailing-list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410/RFNoC xsim simulation support pertaining to rfnoc, x410, and system verilog.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F6RVIQN3Y2Y5NJQ554R5I4N2GHMHJUNM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8631766588689719677=="

--===============8631766588689719677==
Content-Type: multipart/alternative; boundary="000000000000433fb50629be70df"

--000000000000433fb50629be70df
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

All of the testbenches that have a Makefile should work with XSim except
for the ones listed in this file:
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/tools/utils/tes=
tbenches.excludes

And all of the testbenches that have a Makefile should work in ModelSim
except for the ones listed in this file:
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/tools/utils/mod=
elsim.excludes

There aren't specific constructs I'm aware of in the code that aren't
supported by XSim. Most of the testbenches were written for one simulator
or the other, and not always ported to the other simulator when it didn't
just work as written. In some cases that might be because XSim didn't
implement something correctly, but it could also be because of normal
differences between simulators (e.g., non-deterministic execution of
processes). It depends on the testbench. In general, if you want to know
what constructs are supported by XSim, check out UG900, the Vivado Design
Suite User Guide for Logic Simulation.

Thanks,

Wade

On Fri, Dec 20, 2024 at 6:03=E2=80=AFAM Andrew D <sciensfpgaeng@gmail.com> =
wrote:

> Is there documentation that declares which simulations are not supported
> by xsim?  I have used build.py to produce modules.json.  I also found a g=
it
> issue that states the qsfp wrapper simulation is not supported for xsim.
> Can you provide any details on the system verilog constructs that are
> utilized within the codebase that are incompatible with xsim?
>
> Thank you,
> Andrew
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000433fb50629be70df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Andrew,</div><div><br></div><div>All of the testbe=
nches that have a Makefile should work with XSim except for the ones listed=
 in this file:</div><div><a href=3D"https://github.com/EttusResearch/uhd/bl=
ob/master/fpga/usrp3/tools/utils/testbenches.excludes">https://github.com/E=
ttusResearch/uhd/blob/master/fpga/usrp3/tools/utils/testbenches.excludes</a=
></div><div><br></div><div>And all of the testbenches that have a Makefile =
should work in ModelSim except for the ones listed in this file:<br><a href=
=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/tools/utils=
/modelsim.excludes">https://github.com/EttusResearch/uhd/blob/master/fpga/u=
srp3/tools/utils/modelsim.excludes</a></div><div><br></div><div>There aren&=
#39;t specific constructs I&#39;m aware of in the code that aren&#39;t supp=
orted by XSim. Most of the testbenches were written for one simulator or th=
e other, and not always ported to the other simulator when it didn&#39;t ju=
st work as written. In some cases that might be because XSim didn&#39;t imp=
lement something correctly, but it could also be because of normal differen=
ces between simulators (e.g., non-deterministic execution of processes). It=
 depends on the testbench. In general, if you want to know what constructs =
are supported by XSim, check out UG900, the Vivado Design Suite User Guide =
for Logic Simulation.</div><div><br></div><div>Thanks,</div><div><br></div>=
<div>Wade<br></div></div><br><div class=3D"gmail_quote gmail_quote_containe=
r"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 20, 2024 at 6:03=E2=80=
=AFAM Andrew D &lt;<a href=3D"mailto:sciensfpgaeng@gmail.com">sciensfpgaeng=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Is there documentation that declares which=
 simulations are not supported by xsim?=C2=A0 I have used build.py to produ=
ce modules.json.=C2=A0 I also found a git issue that states the qsfp wrappe=
r simulation is not supported for xsim.=C2=A0 Can you provide any details o=
n the system verilog constructs that are utilized within the codebase that =
are incompatible with xsim?</div><div><br></div><div>Thank you,</div><div>A=
ndrew<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000433fb50629be70df--

--===============8631766588689719677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8631766588689719677==--
