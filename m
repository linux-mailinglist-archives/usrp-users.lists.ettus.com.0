Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7393E5FD627
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 10:25:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B10DB383A26
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 04:25:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665649523; bh=KFrTHlJWlKHtXPklZ/2LeVVL7dgfVI5WNIhloBGWb18=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Y74sEi62RriRcOoKazZOqKlq73lFvvaOOuxA4pmGL9tl80CGeKKSWcCH/fFkXw8vV
	 jUbyYMLp0+yVkEa1uUZKGaDoLjU5TTOPOxStWph2NCznrc0jaxRMrwt8EGhrM/y4Ti
	 Pr1K3/YtZRqYuMjMmnPdF+M5pJvxmO5K3bFk5gfeboQTcQHPi4LNGosAupsGbPOc0i
	 VRzSxQPs5CqjigpRR04u0AhnHiLBXt5emQ3bKgmOUvEz0/vS73klhlUXb0EFjbOo7K
	 pAo3dw6P+MT6oVZCGWlivlnerXKMBKa7xtJ6m6pz9jsOQG3ZKFSwJgnh2KeviceXZW
	 a4I9ZEbb5PXGg==
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	by mm2.emwd.com (Postfix) with ESMTPS id D3ABB3837DB
	for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 04:24:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DQ8XrBZq";
	dkim-atps=neutral
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-1364357a691so1474206fac.7
        for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 01:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5c4p5fjuKQNBTiS6HRzBpqXH8coiKkeNtbEDnHLU05c=;
        b=DQ8XrBZqTcE1x+gQYjq8eKiCsfizYFWu/gG27nHTC+kD+QOv7uE6ET33H7IHgFiX4a
         VVpHGoTZCYcOEA2FZF1HcYwFJalHcqzoIO4XG1DFkTZ1u2JxAzPySVr8X0rF5kNizsT+
         /6V3VlKhhhpOmDGwD3rPr6/zcrrQ7chkz8UIdSTsHv0H52vn1Z9U6dq+crgnL4M90Os3
         s8rDT5CaDYiQ7Us6i0v5tMhKmqp21eGcoUlV3CUHLyNjzqPg2KZWsvpseaWQqh72QTT6
         mURJsvrKm1ilnEo8rOFgjWwcEVRb2gbsTQZ36SFgSeBetjSkaL6vafIbjeCDdtWphAoE
         1h+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5c4p5fjuKQNBTiS6HRzBpqXH8coiKkeNtbEDnHLU05c=;
        b=yMKEbvcwECJGblIVNjYyNJFRRE4OuGRZPqDn81IzJQwaV2xw38fNXAYCgd3ZEtfY8N
         Vgj8s8kwZgPtiFYpnNqOGyJxRDm6KgaRQGKrASy7o7d0lkGpEbIqOQmoMeiHDIWnF5it
         BKopxattxe9sncACnkXcJbgoFmpU20kJHZjI6/DyxnYla9qqQjHh6HdDAS93Xwsaa1DF
         CCmzHieldLK3h1uUHZgi1XY31w3e2grMg+T1ttnIvr7mX2iJpUOWuvM8+snZAn+yU392
         G4606ozaNO0IwCLhwHRlBMxwFuEUntl+Tl/rUNf5BXUjWhBr8CDXrqE+wjyhtec/zuqI
         +3yQ==
X-Gm-Message-State: ACrzQf0vUMcn9UkFOCrPQPfyaS12ajTRL5EXbqeU5oFszdxXk6vgXkMy
	oyAhor/LGXZDm5P4w6ocZOAsNqNyeqWSfv48nh4Ep1t9vVE=
X-Google-Smtp-Source: AMsMyM7d1PQFvtq2mMulUoCOUz6jUsnO3Wyu3M/+PbbuCWmq8GsTdYxzX97CmWjR4SEbj2DuItOqjTepYZ+DoMasdsk=
X-Received: by 2002:a05:6870:1607:b0:131:dcec:98f6 with SMTP id
 b7-20020a056870160700b00131dcec98f6mr4584551oae.162.1665649452900; Thu, 13
 Oct 2022 01:24:12 -0700 (PDT)
MIME-Version: 1.0
References: <EbasC4jqL8NsjYCfvd0kGjD4BnqgJ2p9unBBxfQeXXo@lists.ettus.com> <CAFche=gg5i+SMzxKS6tZOB-Qj=_VgsjSQ2uoTNh7gS0JGqX=DA@mail.gmail.com>
In-Reply-To: <CAFche=gg5i+SMzxKS6tZOB-Qj=_VgsjSQ2uoTNh7gS0JGqX=DA@mail.gmail.com>
From: Adrian CR <adri96roll@gmail.com>
Date: Thu, 13 Oct 2022 10:24:03 +0200
Message-ID: <CALq0fFw2ts-fQBWcF0_mHesCcB9LPTyuX-v2nc=oNoLAqVXFZQ@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: OHW4E2PLYHYQJGZKHV25SOQLNVIE374V
X-Message-ID-Hash: OHW4E2PLYHYQJGZKHV25SOQLNVIE374V
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synthesis of Xilinx IP in RFNOC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OHW4E2PLYHYQJGZKHV25SOQLNVIE374V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8832844414975322263=="

--===============8832844414975322263==
Content-Type: multipart/alternative; boundary="000000000000f5ea1705eae63bda"

--000000000000f5ea1705eae63bda
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi !

Apologies for the delay. I=C2=B4ve already solved the problem. It was a pro=
blem
of addressing. I followed the tutorial but i didn=C2=B4t stop reading caref=
ully
and the route was different.

Thank you as well

Adrian

El s=C3=A1b, 8 oct 2022 a las 22:21, Wade Fife (<wade.fife@ettus.com>) escr=
ibi=C3=B3:

> Hi Adr=C3=ADan,
>
> Was it an error or a warning that you received? Sometimes black boxes get
> resolved in a later build stage.
>
> Was the message output during the generation of the IP, or synthesis of
> the E320? Normally when you build the FPGA, it first builds all the IP. S=
o
> I'm wondering if that step was completed successfully.
>
> Does it build without this IP? Since you're targeting a different USRP
> (E320 instead of X310) it'd be good to make sure that works before adding
> new IP.
>
> At a glance, I wonder if you should not put synth/fifo_generator_0.vhd as
> a part of LIB_IP_FIFO_GENERATOR_SRCS. The cmplx_mul example didn't do it
> that way. I think you should be able to copy the cmplx_mul example exactl=
y,
> and just change the names. I don't see anything obviously wrong.
>
> Wade
>
> On Wed, Oct 5, 2022 at 4:54 AM <adri96roll@gmail.com> wrote:
>
>> Hi every one!
>>
>>
>> I=C2=B4m facing some problems to synthesize a proyect that has a Xilinx =
IP, a
>> FIFO Generator. I=C2=B4ve been following this example but it didnt work.
>>
>>
>> https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-exa=
mple
>>
>> The synthesis return me this:
>>
>> 'fifo_generator_0' has undefined contents and is considered a black box.
>> The contents of this cell must be defined for opt_design to complete
>> successfully.
>>
>>
>> These are the modifications I have made:
>>
>> In rfnoc/fpga, i added the folder ip/fifo_generator_0 with the next
>> Makefile.inc
>>
>> include $(TOOLS_DIR)/make/viv_ip_builder.mak
>>
>> LIB_IP_FIFO_GENERATOR_SRCS =3D $(addprefix
>> $(IP_BUILD_DIR)/fifo_generator_0/, \
>>
>> fifo_generator_0.xci \
>>
>> synth/fifo_generator_0.vhd \
>>
>> )
>>
>> .INTERMEDIATE: LIB_FIFO_GENERATOR_TRGT
>>
>> $(LIB_IP_FIFO_GENERATOR_SRCS): LIB_IP_FIFO_GENERATOR_TRGT
>>
>> @:
>>
>> LIB_IP_FIFO_GENERATOR_TRGT:
>> $(OOT_FPGA_DIR)/ip/fifo_generator_0/fifo_generator_0.xci
>>
>> $(call
>> BUILD_VIVADO_IP,fifo_generator_0,$(ARCH),$(PART_ID),$(OOT_FPGA_DIR)/ip,$=
(IP_BUILD_DIR),0
>> )
>>
>> and in the Makefile.src of rfnoc/fpga i added:
>>
>> include $(OOT_FPGA_DIR)/ip/fifo_generator_0/Makefile.inc
>>
>> LIB_IP_XCI_SRCS +=3D $(LIB_IP_FIFO_GENERATOR_SRCS)
>>
>> In the Makefile of my rfnoc, i added these lines:
>>
>> OOT_FPGA_DIR =3D $(dir $(abspath $(firstword $(MAKEFILE_LIST))))/../
>>
>> include $(OOT_FPGA_DIR)/ip/fifo_generator_0/Makefile.inc
>>
>> Finally, I have made sure that Makefile.e320.inx had LIB_IP_XCI_SRCS.
>>
>>
>> How can i solve it?
>>
>>
>> Kind Regards
>>
>>
>> Adr=C3=ADan
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000f5ea1705eae63bda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi !<div><br></div><div>Apologies for the delay. I=C2=B4ve=
 already solved the problem. It was a problem of addressing. I followed the=
 tutorial but i didn=C2=B4t stop reading carefully and the route was differ=
ent.</div><div><br></div><div>Thank you as well</div><div><br>Adrian</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">E=
l s=C3=A1b, 8 oct 2022 a las 22:21, Wade Fife (&lt;<a href=3D"mailto:wade.f=
ife@ettus.com">wade.fife@ettus.com</a>&gt;) escribi=C3=B3:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi=20
Adr=C3=ADan,</div><div><br></div><div>Was it an error or a warning that you=
 received? Sometimes black boxes get resolved in a later build stage.<br></=
div><div><br></div><div>Was the message output during the generation of the=
 IP, or synthesis of the E320? Normally when you build the FPGA, it first b=
uilds all the IP. So I&#39;m wondering if that step was completed successfu=
lly.</div><div><br></div><div>Does it build without this IP? Since you&#39;=
re targeting a different USRP (E320 instead of X310) it&#39;d be good to ma=
ke sure that works before adding new IP.<br></div><div><br></div><div>At a =
glance, I wonder if you should not put synth/fifo_generator_0.vhd as a part=
 of LIB_IP_FIFO_GENERATOR_SRCS. The cmplx_mul example didn&#39;t do it that=
 way. I think you should be able to copy the cmplx_mul example exactly, and=
 just change the names. I don&#39;t see anything obviously wrong.<br></div>=
<div><br></div><div>Wade<br></div><div><code></code>

</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Oct 5, 2022 at 4:54 AM &lt;<a href=3D"mailto:adri96roll@gmail=
.com" target=3D"_blank">adri96roll@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><p>Hi every one!</p><p><br></p>=
<p>I=C2=B4m facing some problems to synthesize a proyect that has a Xilinx =
IP, a FIFO Generator. I=C2=B4ve been following this example but it didnt wo=
rk.</p><p><a href=3D"https://github.com/EttusResearch/uhd/tree/master/host/=
examples/rfnoc-example" target=3D"_blank">https://github.com/EttusResearch/=
uhd/tree/master/host/examples/rfnoc-example</a></p><p>The synthesis return =
me this:</p><p>&#39;fifo_generator_0&#39; has undefined contents and is con=
sidered a black box.  The contents of this cell must be defined for opt_des=
ign to complete successfully.</p><p><br></p><p>These are the modifications =
I have made:</p><p>In rfnoc/fpga, i added the folder ip/fifo_generator_0 wi=
th the next Makefile.inc</p><p><code>include $(TOOLS_DIR)/make/viv_ip_build=
er.mak</code></p><p><code>LIB_IP_FIFO_GENERATOR_SRCS =3D $(addprefix $(IP_B=
UILD_DIR)/fifo_generator_0/, \</code></p><p><code>fifo_generator_0.xci \</c=
ode></p><p><code>synth/fifo_generator_0.vhd \</code></p><p><code>)</code></=
p><p><code>.INTERMEDIATE: LIB_FIFO_GENERATOR_TRGT</code></p><p><code>$(LIB_=
IP_FIFO_GENERATOR_SRCS): LIB_IP_FIFO_GENERATOR_TRGT</code></p><p><code>	@:<=
/code></p><p><code>LIB_IP_FIFO_GENERATOR_TRGT: $(OOT_FPGA_DIR)/ip/fifo_gene=
rator_0/fifo_generator_0.xci</code></p><p><code>	$(call BUILD_VIVADO_IP,fif=
o_generator_0,$(ARCH),$(PART_ID),$(OOT_FPGA_DIR)/ip,$(IP_BUILD_DIR),0</code=
>)</p><p>and in the Makefile.src of rfnoc/fpga i added:</p><p><code>include=
 $(OOT_FPGA_DIR)/ip/fifo_generator_0/Makefile.inc</code></p><p><code>LIB_IP=
_XCI_SRCS +=3D $(LIB_IP_FIFO_GENERATOR_SRCS)</code></p><p>In the Makefile o=
f my rfnoc, i added these lines:</p><p><code>OOT_FPGA_DIR =3D $(dir $(abspa=
th $(firstword $(MAKEFILE_LIST))))/../</code></p><p><code>include $(OOT_FPG=
A_DIR)/ip/fifo_generator_0/Makefile.inc</code></p><p>Finally, I have made s=
ure that Makefile.e320.inx had LIB_IP_XCI_SRCS.</p><p><br></p><p>How can i =
solve it?</p><p><br></p><p>Kind Regards</p><p><br></p><p>Adr=C3=ADan</p><p>=
<br></p><p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000f5ea1705eae63bda--

--===============8832844414975322263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8832844414975322263==--
