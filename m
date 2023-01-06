Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF4A6606EE
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 20:09:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 211F93844DD
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 14:09:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673032168; bh=CtxR7G5Gm+OmSzBCNFRRbKSi9B+E+UAqkxF0HORIovk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LVzYN438ICE/3SF0C8vzKG27oaOZgj27VfZnHfj9wK9AGgPEixgGYxGyrlOwjMJx7
	 Xgm5lxm4CxEZIog57CjqJ/KVaXJ62GYyNkV4pZLmOAO4CbQlb41xFwx1kNHOT9wG0Q
	 q3LjKhsrf0LkYhv6GFKR5qrTh8RB66jooBqvzXY02TVOMwYank9ICffkxaQl2RdWTQ
	 Uuy9yYmPpou4A0NYq9/JlZ7Q2cQuSK4K+uAYvk2d7tWgHSAztFMTVvToPSGJJa6nsH
	 Udoe0vqV7EgdYb2tjNzcG1ksf4G9mRzvocqUDZ+S0ilD+uX3KOp930gDRHNliT2+5J
	 8XbNwNtWVWVSA==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 58E0F38448C
	for <usrp-users@lists.ettus.com>; Fri,  6 Jan 2023 14:09:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Mh0FHnRe";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id kw15so5512963ejc.10
        for <usrp-users@lists.ettus.com>; Fri, 06 Jan 2023 11:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FQQnwfMgpQ0oCzEJHDWEWAAE9H20pB0RynwAqNWXwDk=;
        b=Mh0FHnReFBgYerZKbYW87E+69bxj12sUYUgyUztaOtAzLgsNcpH6FfpJWXhkU+rHrR
         cde/D0cVtyMUoMTGlKVZDxK3g1Rhgc1fLtvL7I1wQ9kiCV+vYyS0Q4O7MOJ+xYMNoTMJ
         JW1fxDo15HUAbH+u41KbqZ0G1OIfTd5aNrz9enN3cKRaYnCCmYybVfhLJUeWir45OXYD
         WuDed88H7X954TEb+0i76+q+bILuVP7ecpX+G2DNeNvhF/jNWoT4NmUJclG5xd24kMg2
         IUiPq60WC9TrIT0Zu5Mm5QBhFrnteM+cH5pQX9Yc81ZSB3Bid5sCpTA/ujQ4Nz8A0t85
         L2uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FQQnwfMgpQ0oCzEJHDWEWAAE9H20pB0RynwAqNWXwDk=;
        b=1BHq34eXCFx4PW8RJaQxJpQ4F51uAM5oCfsWgoHuvpurtom3ruWo1ekSJrEpYFwsFg
         aDaflHJp5cv9UvoKpUClPjScuUoVQ/LWOQQrDXSRNvmk8CbHmWDVuSsWwXQvkPeB4Ucs
         kDdSDl6IgJfAjd/3kHIYUNACEgY8aGtWP4VGVbcc4S/yomKK5xJCdQFD6JKwz7n5tfPv
         PfxMRWBaT1veVPl/mEBKUAzjXsBkrV86EhgcKigxPQ6vBmu5mrOw5xyWN++W2/XYDVGm
         LWGueoTJ0PsOt7YcXJazURjI3RXCOdy1uI/dshvp8FjHshTrPRdwry02HRBLULZ57dqJ
         C81Q==
X-Gm-Message-State: AFqh2kp9pQhCCYD87SssKSQlzl7UjmvMUSCGe28meuwI+V5616eGl9KW
	kceiMg2mZG74kD3UGILlKzrSBLx5oPQ+lOevm6bLnJHZ/Rs=
X-Google-Smtp-Source: AMrXdXv/LEEXThSIaUMkOsDqJhcFQovO0JbCFslVLoGLmf2K/sugfigOs6FRWOcE/6aVHIriecnbYufUngIBpr3h04Y=
X-Received: by 2002:a17:907:76c2:b0:7c0:e5c8:dbf1 with SMTP id
 kf2-20020a17090776c200b007c0e5c8dbf1mr4096349ejc.328.1673032160981; Fri, 06
 Jan 2023 11:09:20 -0800 (PST)
MIME-Version: 1.0
References: <CAEXYVK6SzuxTxGM6kZkxE7+z8F7ooGDzsHAhxcedheDdz=yOFg@mail.gmail.com>
 <CAB__hTS=ShmgOyTbxdMU5RK4OtGP0ru5itBYSBx-bQKdAgAt2A@mail.gmail.com>
In-Reply-To: <CAB__hTS=ShmgOyTbxdMU5RK4OtGP0ru5itBYSBx-bQKdAgAt2A@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 6 Jan 2023 14:09:09 -0500
Message-ID: <CAEXYVK5iKjhYeJdzX5eXvsNY7sro_bhUuQHYUv_noZFw=bvqVQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: KJML3CYLHHTWSBTK7NDT2UJIMZ3WVIYA
X-Message-ID-Hash: KJML3CYLHHTWSBTK7NDT2UJIMZ3WVIYA
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4.0 Generated NoC Shell
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KJML3CYLHHTWSBTK7NDT2UJIMZ3WVIYA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0134996492136745873=="

--===============0134996492136745873==
Content-Type: multipart/alternative; boundary="000000000000a7382d05f19d27be"

--000000000000a7382d05f19d27be
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 6, 2023 at 1:11 PM Rob Kossler <rkossler@nd.edu> wrote:

> On Thu, Jan 5, 2023 at 7:46 PM Brian Padalino <bpadalino@gmail.com> wrote:
> > Before RFNoC 4.0, there was a generic NoC shell that was used instead of
> one being generated for each of the blocks.
> >
> > I see there is a noc_shell_generic_ctrlport_pyld_chdr, but it isn't used
> anywhere.
> >
> > Is there a reason that a generic one isn't utilized and that ones are
> being generated individually for each block?
>
> With RFNoC 4.0, you have various options for which interface you would
> like for payload data and packet context data. These options, which
> are in the block XML file, determine which signals get passed in and
> out of your block.  So, the reason it is custom is to handle the
> variety of interface options.
>

There are no more XML files, right?  It's all YAML?  Right?

In the specification:

  https://files.ettus.com/app_notes/RFNoC_Specification.pdf

... section 2.5.5.3 shows axis_chdr, axis_pyld_ctxt, and axis_data.  But
beyond that, I don't see any descriptions of the differences.  Moreover, I
am unsure if I change the YAML and use rfnoc_image_builder to build things,
does that regenerate the underlying noc_shell_<block>.v file in the OOT
description?  Or is it just an input to some other tool?  I am also
confused by Figure 18 at the end of the document.  I'm not sure I see any
XML files or the rfnocmodtool GUI?

Lastly, I see rfnoc_blocktool in uhd under host/utils/rfnoc_blocktool which
has rfnoc_create_verilog.py which looks are fpga_iface but I didn't see
anything get installed from UHD.  Is rfrnocmodtool from gr-ettus not the
right thing to use anymore?

I might just be getting confused by out of date tutorials and
specifications, but figured I'd try to get my bearings straight.

Thanks,
Brian

--000000000000a7382d05f19d27be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Jan 6, 2023 at 1:11 PM Rob Kossle=
r &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br>=
</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">On Thu, Jan 5, 2023 at 7:46 PM Brian Padalino &lt;<a href=3D"mailto=
:bpadalino@gmail.com" target=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<=
br>
&gt; Before RFNoC 4.0, there was a generic NoC shell that was used instead =
of one being generated for each of the blocks.<br>
&gt;<br>
&gt; I see there is a noc_shell_generic_ctrlport_pyld_chdr, but it isn&#39;=
t used anywhere.<br>
&gt;<br>
&gt; Is there a reason that a generic one isn&#39;t utilized and that ones =
are being generated individually for each block?<br>
<br>
With RFNoC 4.0, you have various options for which interface you would<br>
like for payload data and packet context data. These options, which<br>
are in the block XML file, determine which signals get passed in and<br>
out of your block.=C2=A0 So, the reason it is custom is to handle the<br>
variety of interface options.<br></blockquote><div><br></div><div>There are=
 no more XML files, right?=C2=A0 It&#39;s all YAML?=C2=A0 Right?</div><div>=
<br></div><div>In the specification:</div><div><br></div><div>=C2=A0=C2=A0<=
a href=3D"https://files.ettus.com/app_notes/RFNoC_Specification.pdf">https:=
//files.ettus.com/app_notes/RFNoC_Specification.pdf</a></div><div><br></div=
><div>... section 2.5.5.3 shows axis_chdr, axis_pyld_ctxt, and axis_data.=
=C2=A0 But beyond that, I don&#39;t see any descriptions of the differences=
.=C2=A0 Moreover, I am unsure if I change the YAML and use rfnoc_image_buil=
der to build things, does that regenerate the underlying noc_shell_&lt;bloc=
k&gt;.v file in the OOT description?=C2=A0 Or is it just an input to some o=
ther tool?=C2=A0 I am also confused by Figure 18 at the end of the document=
.=C2=A0 I&#39;m not sure I see any XML files or the rfnocmodtool=C2=A0GUI?<=
/div><div><br></div><div>Lastly, I see rfnoc_blocktool in uhd under host/ut=
ils/rfnoc_blocktool which has rfnoc_create_verilog.py which looks are fpga_=
iface but I didn&#39;t see anything get installed from UHD.=C2=A0 Is rfrnoc=
modtool=C2=A0from gr-ettus not the right thing to use anymore?</div><div><b=
r></div><div>I might just be getting confused by out of date tutorials and =
specifications, but figured I&#39;d try to get my bearings straight.</div><=
div><br></div><div>Thanks,</div><div>Brian</div></div></div>

--000000000000a7382d05f19d27be--

--===============0134996492136745873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0134996492136745873==--
