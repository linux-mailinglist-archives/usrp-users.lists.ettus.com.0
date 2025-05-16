Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DBAABA49B
	for <lists+usrp-users@lfdr.de>; Fri, 16 May 2025 22:18:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFCD6385E98
	for <lists+usrp-users@lfdr.de>; Fri, 16 May 2025 16:18:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747426680; bh=2eFp9RzsIzV48HXb3kN+8jDeCsUwJIbwmwgXdRqXtMg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xWfzy4/2NInBFr2ji6FfkJkD2JAeb1A16npMJlEZVVpYzgze9OADVpysKbslRx70A
	 2Uso5du/WHZUYdn1l11Dauv/3yf4P6CuCByV4jwBkwcD5pfq6J+VNby+Mmno4zv1DY
	 T6vq9CeW9Eivg336M0EqL0c+odUScsXZMT3JWLtPuhwhMEKFheHkcLrq22Yyix2t4y
	 MRsTgtRldqhMY2lku7N0YShk+3/RH+5j6dJYkT6LZM7k0vw2UHlRBSApCKbrbVIbIl
	 4BFMbhIyJdFfkm+55xijDQ6OYt97L6SP69mSLDp4v6qxfFszq4py+IbbBQbZZgc11h
	 4rklLOyczUWEg==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 44F9F385C7C
	for <usrp-users@lists.ettus.com>; Fri, 16 May 2025 16:17:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GzyzxIHE";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ad510c259b9so436183366b.1
        for <usrp-users@lists.ettus.com>; Fri, 16 May 2025 13:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747426645; x=1748031445; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Et4kzJ9yjYQdSIsiHOSBXxF5vEcf3wsBQJUmGRN2mqs=;
        b=GzyzxIHEXTSahTr+44ysE7kuPfYr2ArhNstk2b/DWm7QU9gbht7WXwdDAThr/CHqfm
         xNwV7sOHhtGP2ez/4v9Nt3JvewIveeC6VZ4+Ir+0yAWa7B8zLKpOVEgoL93R8OdiuN1K
         ASQx8Ah1spXBYA++kkWL+xSxxQWxIoZH5INQKaVF+gILEQlUn3K7Ie0h2cP7R0id97mJ
         1WNX8hTTiF0flUlxuA57683Tfh/x7BP6Wja+bSPk+EIBpOv70m2YcHsi6GKFvRX2ZetF
         KLqKzGyehktsEAGMLundeTAsE7F5QoeeL9pVHXA2K3XMd7raWtAMEI0xnycLdwvcIj6/
         CzCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747426645; x=1748031445;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Et4kzJ9yjYQdSIsiHOSBXxF5vEcf3wsBQJUmGRN2mqs=;
        b=jH6mlMtwmv06Q0IlBIlsAcmPsok5BQ2M2aq6UDMgs1rOsvSDlvjmKNW1rFY0t8KOn3
         eZOHatvgB6q8S71pfpWWub9bL3aw0glhF2Q0r9yhzQcK61UX96KW7Ht5Uj+8NYy6AIQO
         5ziWWUWQ74YNyHxvPz3Cw/fozk61dIJfrrGmvEVu+UxBNB0ruJTUVaXLSRb8VRzgc12U
         l/LWqgaoPRjrAqgQSaqSRjEoZR+GseTrCU7SIqxTrGIQgpfjINTGi0VpFluNsCVysvfZ
         sq0GmLlwatBWWtT3eHid3EuHaq3FqDbGyMWGobrEuEKtasnuWQYH93puJZxbJ1PNf3DY
         9C4A==
X-Gm-Message-State: AOJu0YwbMoVVJEH0tzQNSq3LwBlhyOqkokKDwrLGE/mHLkgBtBBupIWN
	pq+zIawcBJJvwyWvCvNgpv+MhBvP5/N+OVncepChEIRxZ2ulGufRJeC+UUmxMZhvFic6iEuYiEk
	/rymmqV6YZbDUFL3ta3tuwBzedvl+pfF3ZBY9
X-Gm-Gg: ASbGnctxftIoLIjUGk3TZ4kcvkZwp0vu6Wa3O4KWETgC+IyDfnn3mIHm3q50bSPdArv
	CoFRwPkjIbiIKcM6LzZzArs380O+fh5yBed+nP8RfY4Bq/re7QMh30F0rKi+bXo2ozhj5EAy1Oc
	yTRkj6oKDVCs8eGSOV5ehfgkEq+OHBZkAy
X-Google-Smtp-Source: AGHT+IHv4w0fXm9DSwVs6MNdy7tLMmwYPkwF/BoLlsH2nDBLFO+P6OCp6xyBDcwFWfxYeQxJJ05EqT0tNqXkH1uFo5o=
X-Received: by 2002:a17:907:724a:b0:ad2:5830:ed2 with SMTP id
 a640c23a62f3a-ad52d66d71dmr400893066b.61.1747426644483; Fri, 16 May 2025
 13:17:24 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 16 May 2025 16:17:13 -0400
X-Gm-Features: AX0GCFtGTk2vMHHl3fmHGEfvo5aKHB9CvsSqXIGbJrgnzC1II6Vb-fxMj0ACZuE
Message-ID: <CAEXYVK6rYFpX8dJErUdGkqn3e56eifN3COXmmqmvvStu5A9AHA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: FWA6L5IZTAPAWGMCAZMTDTITTDHCCM7L
X-Message-ID-Hash: FWA6L5IZTAPAWGMCAZMTDTITTDHCCM7L
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Remote Streaming from Both X440 QSFP+ Ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FWA6L5IZTAPAWGMCAZMTDTITTDHCCM7L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4383885260301333258=="

--===============4383885260301333258==
Content-Type: multipart/alternative; boundary="0000000000006a6484063546780c"

--0000000000006a6484063546780c
Content-Type: text/plain; charset="UTF-8"

On the X440, I'd like my block to be able to output to both QSFP+ ports. I
will be setting this up using remote streaming and I am wondering the
appropriate way to set up my block to be able to output to both ports. From
the little blurb on remote streaming here:

  https://files.ettus.com/manual/page_stream.html#stream_remote

I see that I can supply:

  - dest_addr, dest_port, dest_mac_addr, adapter

The example uses the MultiUSRP object but I am using straight RFNoC. I
assume I need to do this for every stream that I might create, so for the N
ports that are on my block, I need N RX streams that define those values,
right?

If I had 4 ports, and I wanted to split 2 ports on sfp0 and 2 on sfp1, I'd
create the stream for all 4 then issue the stream command to each one and I
should see the packets flow?

Thanks,
Brian

--0000000000006a6484063546780c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On the X440, I&#39;d like my block to be able to output to=
 both QSFP+ ports. I will be setting this up using remote streaming and I a=
m wondering the appropriate way to set up my block to be able to output to =
both ports. From the little blurb on remote streaming here:<div><br></div><=
div>=C2=A0=C2=A0<a href=3D"https://files.ettus.com/manual/page_stream.html#=
stream_remote">https://files.ettus.com/manual/page_stream.html#stream_remot=
e</a></div><div><br></div><div>I see that I can supply:</div><div><br></div=
><div>=C2=A0 - dest_addr, dest_port, dest_mac_addr, adapter</div><div><br><=
/div><div>The example uses the MultiUSRP object but I am using straight RFN=
oC. I assume I need to do this for every stream that I might create, so for=
 the N ports that are on my block, I need N RX=C2=A0streams that define tho=
se values, right?</div><div><br></div><div>If I had 4 ports, and I wanted t=
o split 2 ports on sfp0 and 2 on sfp1, I&#39;d create the stream for all 4 =
then issue the stream command to each one and I should see the packets flow=
?</div><div><br></div><div>Thanks,</div><div>Brian</div></div>

--0000000000006a6484063546780c--

--===============4383885260301333258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4383885260301333258==--
