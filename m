Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WvJfLcc26Wk1WAIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 22:59:51 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B802044AC17
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 22:59:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 139493869A2
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 16:59:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1776891589; bh=3PTtcN6FB7YTJvj1guSl93rEwMmSndDDvHCIHL7E/uM=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Sgngy1izpeLfIMKbliqYfIBAF9qH33Xc3Wsvn2dYb2aV0MSp8C4F1lAUJ+DLdArYj
	 K5dPbHOvUckQ7SOr+DjCZ49u7M75dOMow3rI8eOZznxS7P2+PBdGgzOv2NJ4Bb4ACB
	 AXPrlT+TGapy9dmykVlBrwaJpKzwl+EZHOR5mLN/rMsQzR9sKfSODKx1zy4G8cnWxC
	 1j3C90KXvgqytu241yz44pE5QiXWUmCeJJH4QWFngyBpTqWPxbzR1D/K/wkOQlHYKD
	 p8VfNqks2Sypkqdo8t5pW3z4+ajgDT8KOpufM8QtLQZBYbZqs+mNVBNqGn69IxKzQm
	 dZ7y+BEo6iJdw==
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 2AA78385BA5
	for <usrp-users@lists.ettus.com>; Wed, 22 Apr 2026 16:58:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="kFrQhDP1";
	dkim-atps=neutral
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-65318dafbcbso6067147d50.2
        for <usrp-users@lists.ettus.com>; Wed, 22 Apr 2026 13:58:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776891537; cv=none;
        d=google.com; s=arc-20240605;
        b=IM1VSejGbHwKJWZlnDWzEvC1Fy5Dpqx4sPp0eZbG+jLy4pkr+B3wkAAoV/ttSq1EAd
         /1f2Mdv2KiLnhG2STrznbgZDizxXEduwAm/xx14LEWoFzkxPbPcZ1VXJHAtcOOSxYmps
         mztC5VUmEVPp7fsmWTKSMThocmcBYSQUaOI99KBpY/8WjR1ickdVTd8EXPO5Bs8bxcsi
         x5sAi/ddynbHgjJwJYJSpoCavPh25FFsqWPSNb3yutMTNKgcKd8qhWbQP4hRlcBGUs66
         Cjmv3lTvnH1Y9pOc95m9xkfw8yGi5tMnO9f/ZvWhaTa3KcOYlyD4H5tgrG5+CB8Dv9Mo
         DxTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=bwbBIYWuVZ01C/sOSMlcW2yM80nScZPRD1tkrD2tfa0=;
        fh=7x+5Qq5FC8MUtCGcJvrnDrCV484FJE2pnnNf2U13jts=;
        b=bBFrrE7W37t9zkdhcGW/8TxBDr/JnUXEVlkTkLZqcVNF+frKqhaOYpsTdNOIFuvkb0
         0pMQQow1KcMse7RC6HANpG+4JXhLwWXnz2nC8859Lia2iGB2FuHUobgNXAm+53yRVU1k
         PEeLUZuuvhoWI6rvS1rKIS56tDXvvgO/Kk6ytEvqec5ozvhsJnXmfUPnbC3OStYshMU4
         oSSVz7m1GeT3mXDyjv0taSg0iW3z+o9dh0xgkRgR44K+0yeBJsodcPjQuxsbUrWHhjJI
         s8Nh10f/rf35wgamsW3pUeJz6Lv0h7Gz9Z+w4rza6fAsTSjMqxLwS6Y9BIKOILCs6wwc
         8kFg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1776891537; x=1777496337; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bwbBIYWuVZ01C/sOSMlcW2yM80nScZPRD1tkrD2tfa0=;
        b=kFrQhDP14k30JIYGbHatx319jnUP1D9rook0pRQT4Y1XznDSBRheU5amd0IV+rvzGZ
         VGLULSvFwurZCfdQ94Or6XKEf2tePztMyDUcC0zYVdjj/sRbaWWZR9Stxh/tWmYjYmYI
         QR3Ev5vOS4gbq/qcv9O50RJvtjk9SL3Y//GLinqouBg1vR0JpUbmq0r8aS5iKOay9BQC
         UCcoEpUi5VAH3wT+xyib6KM8rnv+t1boKAYd2pGeS1GRY3aY35cF2WeE2+ROQJw7kCHb
         7r3sVmY02jHzp7JnbQw7qs9Dbev6c6AE7ykTshq7BAjz3Tb7fmHloav+sV+pxEcujJln
         ej6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776891537; x=1777496337;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bwbBIYWuVZ01C/sOSMlcW2yM80nScZPRD1tkrD2tfa0=;
        b=PwhwUMfuD9iJ9LmIJr1yVilsshXvAUz265zC22P8TpfaxYdrXrCbDRNeGbv0cQ2Uvm
         ElWv6JouSpuin2HeG1DojUCfUjpt1+JsVQgjPCUwbNvMAI0Ri9FMOcnZGer6au6ysJPL
         u8ZxjVcDmfcwOmy84p+wuckIvs8ddNib7udC4FWo7eg69b4Qy4hwEon6kmopI7rnh0in
         DsoNMqTwXRZBJRMLu+RowbH9aaXW2gKvVNJHBppokgju9VbW9DTDD0iwlJuF4WOrJxTs
         JQlt14ccrR6FomdNSH1aXSPQi2Am+nKFVJVpEgVGy3/N+Zve7I8vqnizYdJZJx8WhVTh
         Ce5g==
X-Gm-Message-State: AOJu0YzvzGzuNfWqm3q53EFz7lTk+8gOWCUBZIHEvkqG+Tkz3jAXEY6f
	pTx9OuENukiKNRR1B803bRKRGCOYs0NRNsuorBuVyor2p+GYiM0RZDsKLM4H40vs4NHw64NALfe
	3An4B2H0XA2OBntZeHhLOSZhV4zug40ga8oxprqXFDyGnbSlP+94DnQ==
X-Gm-Gg: AeBDieudaoVgB/CIr8xEUogFeOaYK8817ExRNHZ7ghlMonKlm/kwVcxk/oEJuKGpy88
	Ib0EJOsBU213BWPwfvvlMfsQzDtLu9vRomSlR6/Ozza8ls6AQYnw9ja9eAMzH7zC/6b3WCPjEa4
	Ur6cA0c4EnN7WSJq5OLA4yU3BDBGW/VQPMh8hKWqxkgLaA+FQFfsRVx8mALgm4j56rOILW7Z9lY
	s7c4p5vhQCXsqBFaCZjxwRepIU44JJ1bxCNYywWxi1f2YNOGvXXsbpH4K8wQmn44z16WTOafjnO
	cp8/eM782XZJa76VflhtEwsphD+He+FsNQQf8DvUU1gOMUnGwpKjohoqvl1M
X-Received: by 2002:a05:690e:1a82:b0:651:b118:f21 with SMTP id
 956f58d0204a3-653109d1ec3mr18117160d50.39.1776891537340; Wed, 22 Apr 2026
 13:58:57 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 22 Apr 2026 16:58:46 -0400
X-Gm-Features: AQROBzAwDNU_Nyuc5Tb95Q9SGwItD-Ox1C4LzfXbryJ6sX_MXYjSuUc7h4DQjNI
Message-ID: <CAB__hTQrK_wswceCEgReCGHVMw6mpKEzFvznmVRAs-C1DzOy+g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: DHVKHQAWYBH2VX3ISG5WDMGGQWJTN4ZP
X-Message-ID-Hash: DHVKHQAWYBH2VX3ISG5WDMGGQWJTN4ZP
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] New Timed Rx/Tx complex gain feature 4.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DHVKHQAWYBH2VX3ISG5WDMGGQWJTN4ZP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5796740616613700544=="
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[ettus.com];
	RCVD_COUNT_THREE(0.00)[3];
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
X-Rspamd-Queue-Id: B802044AC17
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============5796740616613700544==
Content-Type: multipart/alternative; boundary="000000000000e36eb5065012ccae"

--000000000000e36eb5065012ccae
Content-Type: text/plain; charset="UTF-8"

Hi,
The change log indicates a new timed complex gain feature.  But, after
looking through the manual, I can't find the relevant API function calls.
Any advice?
Rob

--000000000000e36eb5065012ccae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>The change log indicates a new timed co=
mplex gain feature.=C2=A0 But, after looking through the manual, I can&#39;=
t find the relevant API function calls.=C2=A0 Any advice?</div><div>Rob</di=
v></div>

--000000000000e36eb5065012ccae--

--===============5796740616613700544==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5796740616613700544==--
