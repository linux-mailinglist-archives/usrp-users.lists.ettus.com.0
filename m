Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aObQOqxTGGoQjQgAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2026 16:39:40 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 189FA5F3D32
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2026 16:39:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABF5738635F
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2026 10:39:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1779979178; bh=e5F9FxmgSXKShDR6ogtC2CsUqqgprKgUmrF3lXoL0Ac=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=oz3GefukDQ6odw1zAbVyNcsaXXwuEv6qwq+HVnWZahzMX/QgQ5rl44ZNntYD4881T
	 aNxl3R0JZXcO5BvufdRzt4H9sgMz0jxJ4D0rdbdpvSe+EUIHtOM3f30UVqnVmzDRMm
	 g0A+bIfV9m27NkakgBQCrdHkCRulJTDRA7O7XtQ2E5Kjyb//TXA6z4hb21Ut/WfC3G
	 JdCIC7Ja1bQzNd3vS0EAN4hnJxS+RTx9IOKVelhKNPPIW3GF/uMAtXRhF5Cu0q0jB/
	 E8C4RVxdiiM65V4evwnXEyo/OxnfDobHFfS8z1g4E8vPVVvx5Oiv829+QtXG3efNrY
	 mfpej7npbCoKA==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 0F2CF386302
	for <usrp-users@lists.ettus.com>; Thu, 28 May 2026 10:38:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="CkowcIJ1";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-7bb0d18c7f9so122130297b3.0
        for <usrp-users@lists.ettus.com>; Thu, 28 May 2026 07:38:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779979109; cv=none;
        d=google.com; s=arc-20240605;
        b=cARPPHSVuKlOouLcRRaXj+I1vbHj2YGk+PM6hzy1xklJ5sY6jLxNIsPbcpsiXibyxd
         /MOS5LTSZD29MOigClj2ICtxTATzhuB7XOkNELP/RV3dHWFyJs26WdqPmtoKN0klU0nl
         pbM7yqGvwryCs89ErLJAGlnP+r4ogcCBCLahdQ0PLv21hRozVRc1ubjDUHZfxGrKqifb
         YL6H1rGnISNmrwFAZEzkLTF28I5ZqP/WhbJFX0mVrPKGJX/5SSPhW7+vpQMBt6wDscbr
         /NRea2ZCVwOK1pTrYgGf228z0gOt7YUYgu5pEnMJBwGEgnaDpyBsWT91wOtrO/CaHSDe
         J9vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=D/7AXMiE72+RZRZRwiSVwjYOCfTohQ1Pe7pZq/yZsPA=;
        fh=7x+5Qq5FC8MUtCGcJvrnDrCV484FJE2pnnNf2U13jts=;
        b=EPvf8WkEGcWMh7JkB7shhsHPRkDFxo2t0d22hyUpBa9eSZnsEuj65VzSvuvp3QBeB8
         R6UwcXlNy0jXNoMJnPUYcsVdOdVOwD1R3iJP6JIX9mjxcsSS9HY+BJhH+gI852AnjAcE
         9S8CZyZLiusELRDm9kOvXZuQxS0PYrWPVXJr3kBizZQecKQ8NsofBv1wp1hypBN1tsCL
         9e1G1FToY+TOijxPbarVyIQljNnWBtjbvZ1Bg4R2PK958T1gXHuc+uQIwtjzi9X6THIj
         ph1H6XvihxYEot3z2RHrDBlA71X0gSl5o1x4PFBE8OBLSpEguB/+mFnpRLcATm3EkP9L
         Ci3w==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1779979109; x=1780583909; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=D/7AXMiE72+RZRZRwiSVwjYOCfTohQ1Pe7pZq/yZsPA=;
        b=CkowcIJ11qpCkz6xZe6wDT24feSLP0x+hGPAdVM3zRr3QQ/nt+nKx9+zHP/RNdXraR
         6uJHp4rRdjTWPZyB/bgdgJXyqfxfBPTuTWXAtsbo4007pgXjXCFJQE4bCHwfrToUf1i6
         fA2JtYVfpcwRWXbFQau6Mg56HQujpHh/6DMDC37ZT+CNlFcMbZM8f29XYDyLi7VJ2YMc
         6Hq7Qlsovk18MTlbb0acnzhlV/w1GyUh3DIYYrkZLg1kUncXyEwh7RVDZPPY9ezz37ZG
         sMbb3LAE53/oHVFwgXW9u2+bKWifwfjcftcOo/4QESCDg6Ss6KHkXD980cD6469d/03o
         q0Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779979109; x=1780583909;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D/7AXMiE72+RZRZRwiSVwjYOCfTohQ1Pe7pZq/yZsPA=;
        b=ZEc7UIdNlTQTwgPwbpxCCpigdbREFVRUe3iAHLraG79Z2kQO+lvXWvKqIylUgmZzJ1
         ZzGBnY2sHf1CKgoyggswavHx+QTSpopZA7BYj/7OinMXDAl2P+tiXwuY4J8iLXdAbEa/
         +jY4lYCDwSrJMXMkVX0toI7kBv6qLB+cGAg4+vkrEmeRk/3stJbe1zvWXDc2/iMNDAu0
         3lG2Z/dz2ewobxkib9cK0M9fCnuUmcEuURX0rianiuv9Qjt6CoGTVfESXT6M6hFeLiTL
         9bwOckM0bEV93JGRyh0FyISDmFwjBG6n/x60nzozJ9tsomA1/yz1Rl9bePbXqn2scCh0
         eNgg==
X-Gm-Message-State: AOJu0YxWfB4ggR6KOeQZ48EhIP5m/wPTsMBBw4DsMLUSNrMYFDVmO1Fh
	gA9uZasuFWLmEUMYGkC6cDiIyCBxIlzo2kWmuD87yW73uz31+3EFLQh99By2Kv9Z+a28j26WsN7
	BRD4QCgRB5JNUIUmr3xAhU/8nk4twpjnAc4fgt9WTZFWaNt9U6iriguaF
X-Gm-Gg: Acq92OHax54hKUu3kdszIR8g1qCAhEXu5dbx4MmJTHwUWrg7CqYy02iJ1vh0XNqAnFf
	tCx8XP1MZiR4jn7vtDFjfExPI5t/2Bw11IY6RNYhdL+7wQXsacDqCmz2mm6Uqb0YiU4DaHaqeK8
	8BPap+sf6GZV3hzrB57/KhIbyqcoyqWcb6hU5JLoM/Et70fzxH6qcxCNCqyC3QM+GCTGIca14Dh
	u+p+h/hRwFVqvsleCGYPfYhI25Txw4GIXXIae41Eql+T/NJ7X2JTHo6PxDIrtmGI47rc8SVPbf6
	KHhTjjrkDUGwMs04whIv3ipfsJFHc/IZV5m/uApqwoiDLa1VqdcmhLjtyd5n
X-Received: by 2002:a05:690c:6111:b0:7bd:9899:f906 with SMTP id
 00721157ae682-7d337db19e2mr276145077b3.7.1779979109196; Thu, 28 May 2026
 07:38:29 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 28 May 2026 10:38:18 -0400
X-Gm-Features: AVHnY4KZasCvrEIzPS31oYAhAinTKKxohrXpYlExMg8nhFL2G0Q_-XUv1TAZ-8I
Message-ID: <CAB__hTQU4PVeJpqWm3GB4BVHtbG48WvrnPJ0=s=_o5TtHMW4bg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: DWAQXIJYV6HZHYU3XSJNQGYQ5UMEEPHH
X-Message-ID-Hash: DWAQXIJYV6HZHYU3XSJNQGYQ5UMEEPHH
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] build N320 fpga image with axi_ram_fifo
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DWAQXIJYV6HZHYU3XSJNQGYQ5UMEEPHH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7956644179809233929=="
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_EQ_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	HAS_REPLYTO(0.00)[rkossler@nd.edu]
X-Rspamd-Queue-Id: 189FA5F3D32
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============7956644179809233929==
Content-Type: multipart/alternative; boundary="0000000000008362820652e1ae87"

--0000000000008362820652e1ae87
Content-Type: text/plain; charset="UTF-8"

Hi,
I am building an N320 image that is basically a repeater with static rfnoc
links as follows:
  radio0 => ddc0 => my-timestamp-adjust => axi_ram_fifo => duc1 => radio1

I have a question about how to use the parameters of the axi_ram_fifo block
in order to maximize the FIFO depth.  From the N320 BIST yml, I found the
following:
      # These parameters match the memory interface on the N3XX
      NUM_PORTS: 4
      MEM_DATA_W: 64
      MEM_ADDR_W: 31
      # Create four non-overlapping 32 MB buffers by default
      FIFO_ADDR_BASE: "{31'h06000000, 31'h04000000, 31'h02000000,
31'h00000000}"
      FIFO_ADDR_MASK: "{31'h01FFFFFF, 31'h01FFFFFF, 31'h01FFFFFF,
31'h01FFFFFF}"
      MEM_CLK_RATE: "303819444" # 166.666666 MHz * 21.875 / 4 / 3 =
303.819444 MHz

This indicates that there are 4 ports (later in the yml, ports 3 and 4 are
explicitly not connected).  My question is: how do I configure
FIFO_ADDR_BASE and FIFO_ADDR_MASK in order to maximize the FIFO capacity?

For the case of only needing one FIFO buffer, would this be correct?
      FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h00000000,
31'h00000000}"
      FIFO_ADDR_MASK: "{31'h3FFFFFFF, 31'h3FFFFFFF, 31'h3FFFFFFF,
31'h3FFFFFFF}"

For the case of only needing two FIFO buffers, would this be correct?
      FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h40000000,
31'h00000000}"
      FIFO_ADDR_MASK: "{31'h3FFFFFFF, 31'h3FFFFFFF, 31'h3FFFFFFF,
31'h3FFFFFFF}"

My other question is related to what is the maximum axi_ram_fifo
throughput?  Can I run with one port (in & out) at full streaming rate of
250 MS/s?  Does the RAM bandwidth support this rate?  How about if I have 2
ports (in & out) - what is the maximum rate?

Rob

--0000000000008362820652e1ae87
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I am building an N320 image that is bas=
ically a repeater with static rfnoc links as follows:</div><div><span style=
=3D"font-family:monospace">=C2=A0 radio0 =3D&gt; ddc0 =3D&gt; my-timestamp-=
adjust =3D&gt; axi_ram_fifo =3D&gt; duc1 =3D&gt; radio1</span></div><div><b=
r></div><div>I have a question about how to use the parameters of the axi_r=
am_fifo block in order to maximize the FIFO depth.=C2=A0 From the N320 BIST=
 yml, I found the following:</div><div><span style=3D"font-family:monospace=
">=C2=A0 =C2=A0 =C2=A0 # These parameters match the memory interface on the=
 N3XX<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 4<br>=C2=A0 =C2=A0 =C2=A0 MEM_DATA=
_W: 64<br>=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 31<br>=C2=A0 =C2=A0 =C2=A0 # Cre=
ate four non-overlapping 32 MB buffers by default<br><span style=3D"backgro=
und-color:rgb(255,255,0)">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{31&#3=
9;h06000000, 31&#39;h04000000, 31&#39;h02000000, 31&#39;h00000000}&quot;<br=
>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h01FFFFFF, 31&#39;h01FF=
FFFF, 31&#39;h01FFFFFF, 31&#39;h01FFFFFF}&quot;<br></span>=C2=A0 =C2=A0 =C2=
=A0 MEM_CLK_RATE: &quot;303819444&quot; # 166.666666 MHz * 21.875 / 4 / 3 =
=3D 303.819444 MHz<br></span><br></div><div>This indicates that there are 4=
 ports (later in the yml, ports 3 and 4 are explicitly not connected).=C2=
=A0 My question is: how do I configure FIFO_ADDR_BASE and FIFO_ADDR_MASK in=
 order to maximize the FIFO capacity?</div><div><br></div><div>For the case=
 of only needing one FIFO buffer, would this be correct?</div><div><span st=
yle=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{3=
1&#39;h00000000, 31&#39;h00000000, 31&#39;h00000000, 31&#39;h00000000}&quot=
;<br>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h3FFFFFFF, 31&#39;h=
3FFFFFFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF}&quot;<br></span><br></div><di=
v><div>For the case of only needing two FIFO buffers, would this be correct=
?</div><div><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO=
_ADDR_BASE: &quot;{31&#39;h00000000, 31&#39;h00000000, 31&#39;h40000000, 31=
&#39;h00000000}&quot;<br>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39=
;h3FFFFFFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF}&quot;<br>=
</span><br></div><div>My other question is related to what is the maximum a=
xi_ram_fifo throughput?=C2=A0 Can I run with one port (in &amp; out) at ful=
l streaming rate of 250 MS/s?=C2=A0 Does the RAM bandwidth support this rat=
e?=C2=A0 How about if I have 2 ports (in &amp; out) - what is the maximum r=
ate?</div><div><br></div><div>Rob</div></div></div>

--0000000000008362820652e1ae87--

--===============7956644179809233929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7956644179809233929==--
