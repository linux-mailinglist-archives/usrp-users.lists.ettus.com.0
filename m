Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE86A959C9
	for <lists+usrp-users@lfdr.de>; Tue, 22 Apr 2025 01:29:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81681385ACB
	for <lists+usrp-users@lfdr.de>; Mon, 21 Apr 2025 19:29:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745278146; bh=h9yUQKybYL7wPIIflB1dJTTebWKh2fKN5IZoeGG4kP0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=f1MhiOvVZw10MWA0UONyCZcGjLIUcWyI5xJFcxb+ycAZbnXleF8oUrPBGV3Zi7wwX
	 +v6p7TMzncVhAt/mz7cFp4wSTO5lIf8ASpeiC1kF5znybW3G1QcjzD26/2psqYuw/2
	 UuQUFAhv66xLB2ZAGoPjbVfk8RZQWiAHUKT0tWaucmVEUoW4iTbRu6STrUJ51UW1XG
	 dpMbdE/ZdtoYs9rK/w/wwrv/9t1VszVLptz+ygcdBfMWhEIbSlfcpwGLvRSh7Y2bd4
	 qSytPkdsV3OyPp/03xDuPludLTcBw5tZxZmXuf7Zf3NIBe2pyeMUHv5AAspVqJStsO
	 VM1ehQhuE/YUQ==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 11CA2385260
	for <usrp-users@lists.ettus.com>; Mon, 21 Apr 2025 19:28:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lfQvyHXS";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e8be1bdb7bso6909995a12.0
        for <usrp-users@lists.ettus.com>; Mon, 21 Apr 2025 16:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745278123; x=1745882923; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RkrwkRB3kTVcnZf6TeR17cVKFvEEWLMQfzoZBmmCAyI=;
        b=lfQvyHXS7uA92RqGCdI9uSWcyBQVRmNCf3b+wT/VIfzMScZOwWgZzkNdXjmtf3MqF2
         7EDRDvPeQJWEfgLTOKyI6a3+OofHPtSY8O7mm1XCVGIDPnzvlE7q8fPO3IkQ0IIEaMrt
         CmRRv8g2aSAxAKdUSaVr5BZePj1PNN/EQPXyT9uL/RZ8r9Gx2dNsmW6v7dIktU+UoTGA
         Lu2GEMJnUNHQGuMJArF6ato+gvTPCS9B5NebEUI1cyPjKlkUWwI2snwlppBnycGhrMKF
         3Mybx4AZ1IEwP2VdWAVSQnOoD1S3mALBK24JTzbzUhgIRRli8TpSFpe+VfaMgDjUCkq6
         wODA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745278123; x=1745882923;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RkrwkRB3kTVcnZf6TeR17cVKFvEEWLMQfzoZBmmCAyI=;
        b=XiX0ccPu55daPQ6sNFgovzVQ44bB6AvbqU75ku2V5DJsZxmGOizW7R31UpIGqgIoVg
         Ng0cnLu4OsDd6hwll1BvP5vSfEP5+vj1/4vtyEZ0Qo1cngvW4Rw1qlFxTYUMtwwRHZ45
         sw2BJe3AfOK0hfUWHpH1Ef/JcSFuf6KRzacK00EfsiXYTHXapPPNIfLlr+nYpOpxNqbE
         TfRpmj2/OlbqRxg78wKDe+UBEgMGUBYK0KtVIJZ0hOtT/T/M95rmqFlNir2TDZsMaedu
         EbVesdjnUON8waTnKiTy0OB/kxKWcQYgs/Luyb1xMdsVimzSfgeUOboI0FoZB8AvGDiQ
         iatw==
X-Gm-Message-State: AOJu0Yyvl6Wu00YIwX3ambrl9viDSg14it8Isw1jDWDgivRmYTBX/Nm7
	eiwKUnjAdmgLkfYGe+3XJxBbyhoB2gVGdm1nMhLIOlAAaJ0GYAPOVqWBlWUV4UwqwHq+fTkLtMg
	8xZjuEw1XOf5AEDI8oN4SVEV6UCO8WN0e
X-Gm-Gg: ASbGnctHfOfAnatiydtb5rYU2QTGa7jjKIg/OcabPR8dUDLZDefDpTDE7kzh3hlCAD3
	GupQxIylQv1tC+Ffb8VmfWMr1Ou9+klFJUn/thRaNZrlWSQx8QEFF
X-Google-Smtp-Source: AGHT+IFRrfhOvMhfoaB5EoHynjFtS49+r/ldcw811I+uaXbNrzF0mOCN8qoU5DQDGMrGOXsUJraV2IGpEjKknseM3W8=
X-Received: by 2002:a17:907:97d1:b0:ac3:4226:d40 with SMTP id
 a640c23a62f3a-acb74ad9670mr1263114866b.12.1745278123159; Mon, 21 Apr 2025
 16:28:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK70sjPF61vd66FuEna4vt5jEtiSN2CSkmQOz5S=Bpptag@mail.gmail.com>
In-Reply-To: <CAEXYVK70sjPF61vd66FuEna4vt5jEtiSN2CSkmQOz5S=Bpptag@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 21 Apr 2025 19:28:31 -0400
X-Gm-Features: ATxdqUGA58yx2KDpV3PlvjpvyPRKqJ6mopPExxukvKD6F-Gae3oGqTJAe6sWfHM
Message-ID: <CAEXYVK6SLdgfg_ir+wntrSgm4y7m9k6B=VfThoGCT=nkTqHBag@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: ODSK367ZJGNPU2FPL74DS4AJ4PMSCQKL
X-Message-ID-Hash: ODSK367ZJGNPU2FPL74DS4AJ4PMSCQKL
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 RFNoC Local Configuration, Remote Data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ODSK367ZJGNPU2FPL74DS4AJ4PMSCQKL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2849404491059708288=="

--===============2849404491059708288==
Content-Type: multipart/alternative; boundary="00000000000090b91f0633523a65"

--00000000000090b91f0633523a65
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Answering myself partially, I see there is a concept of Remote Streaming:

  https://uhd.readthedocs.io/en/latest/page_stream.html#stream_remote

The example goes over how to set it up for RX streams, but not for TX
streams. Is it not required for that direction since the USRP is sensitive
to all packets destined for its address?

I assume the application on the receiving side just opens the UDP port and
uses the uhd::utils::chdr::chdr_packet class to dissect or create
the packet that just gets sent over the socket?

Lastly, the example uses MultiUSRP - is it all the same for an RFNoC
implementation? Create the graph, commit it, issue the command?

Using the chdr_packet class, is there a way to know the endpoint ID to put
into the header for the TX side of things? Is that fixed and something I
could see from uhd_usrp_probe --tree?

Sorry for all the questions, I appreciate any insights.

Thanks,
Brian

On Fri, Apr 18, 2025 at 5:18=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> Are there any examples of the X440 RFNoC configuration being set up
> locally on the Arm to be able to accept CHDR packets over the dual 100 Gb=
e
> interface?
>
> I imagine it shouldn't be too difficult since the 1Gbe management port is
> used with MPM to configure RFNoC so it seems very similar (configure on o=
ne
> port, listen on a different one). I am just not sure what runtime
> configuration items might need to be "fixed" in the local application suc=
h
> that the machines out-of-the-loop can still talk with the device.
>
> Any pointers or suggestions on how to accomplish this would be greatly
> appreciated.
>
> Thanks,
> Brian
>

--00000000000090b91f0633523a65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Answering myself partially, I see there is a concept of Re=
mote Streaming:<div><br></div><div>=C2=A0=C2=A0<a href=3D"https://uhd.readt=
hedocs.io/en/latest/page_stream.html#stream_remote">https://uhd.readthedocs=
.io/en/latest/page_stream.html#stream_remote</a></div><div><br></div><div>T=
he example goes over how to set it up for RX streams, but not for TX stream=
s. Is it not required for that direction since the USRP is sensitive to all=
 packets destined for its address?</div><div><br></div><div>I assume the ap=
plication on the receiving side just opens the UDP port and uses the uhd::u=
tils::chdr::chdr_packet class to dissect or create the=C2=A0packet that jus=
t gets sent over the socket?</div><div><br></div><div>Lastly, the example u=
ses MultiUSRP - is it all the same for an RFNoC implementation? Create the =
graph, commit it, issue the command?</div><div><br></div><div>Using the chd=
r_packet class, is there a way to know the endpoint ID to put into the head=
er for the TX side of things? Is that fixed and something I could see from =
uhd_usrp_probe --tree?</div><div><br></div><div>Sorry for all the questions=
, I appreciate any insights.</div><div><br></div><div>Thanks,</div><div>Bri=
an</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Apr 18, 2025 at 5:18=E2=80=AFPM Brian=
 Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Are there any examples of the X440 RFNoC configuration being =
set up locally on the Arm to be able to accept CHDR packets over the dual 1=
00 Gbe interface?<div><br></div><div>I imagine it shouldn&#39;t be too diff=
icult since the 1Gbe management port is used with MPM to configure RFNoC so=
 it seems very similar (configure on one port, listen on a different one). =
I am just not sure what runtime configuration=C2=A0items might need to be &=
quot;fixed&quot; in the local application such that the machines out-of-the=
-loop can still talk with the device.</div><div><br></div><div>Any pointers=
 or suggestions on how to accomplish this would be greatly appreciated.</di=
v><div><br></div><div>Thanks,</div><div>Brian</div></div>
</blockquote></div>

--00000000000090b91f0633523a65--

--===============2849404491059708288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2849404491059708288==--
