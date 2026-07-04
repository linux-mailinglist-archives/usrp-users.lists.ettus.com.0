Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pFLzOPklSWoJywAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Sat, 04 Jul 2026 17:25:45 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E46A3707D7C
	for <lists+usrp-users@lfdr.de>; Sat, 04 Jul 2026 17:25:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=F1NBMU1X;
	dkim=fail ("body hash did not verify") header.d=ettus-com.20251104.gappssmtp.com header.s=20251104 header.b=oVt8bdLv;
	dmarc=none;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A388B3863AE
	for <lists+usrp-users@lfdr.de>; Sat,  4 Jul 2026 11:25:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1783178743; bh=dsuBUtQ8+cCj4tQSWaqexojXG0VMEIWywCLf53c3gg8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=F1NBMU1XNgn0/dVOvqp3UaMnke5PbfYvyw0WOWUJls8DYKLRQem40E3A/7PHZEO0W
	 MqVopU0u4UH/IUKFzDBjKG9if+swWwehTW+SbuXAmMbjGm6Atm4EvJ0Z5qkLbReNjj
	 KBDSqjhHbhyxo/7/q/sIkxts2uo/lO2kRxRGvzoSmXt1vIGUdtgwJC/Umh2EG5Y4fx
	 36sNWCamca2gzT9NUEX6x0nFQlCbbqW00/emrOP6e2rcPgnQ16vwJugUcEeK9Dhuzc
	 dw0g+eI4gUjheDHJlOhLfzjxC3nH1dSj+iB164z4hCYizebjpZ+WHIlih01LGt3o01
	 Ol026j/ncPiDg==
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 4805F386354
	for <usrp-users@lists.ettus.com>; Sat,  4 Jul 2026 11:25:24 -0400 (EDT)
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-66628618509so2120560d50.2
        for <usrp-users@lists.ettus.com>; Sat, 04 Jul 2026 08:25:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783178723; cv=none;
        d=google.com; s=arc-20260327;
        b=eJDDbXvBCSALnBuGsTcokEYnmQcUMqIP2ap/1F1i/5RfbfU4psLbeK35NQiBbGYO/R
         ngVCKRSxzvH/Yr1v3LmqvjyorOyfyrHLi8mAHoMBlzxLztiYs0BFC7rW6Aygj/0ZnLea
         FOPhFtU8mhOC4mJ9fOCFs+b7E4enZ+6xDFtlCExvFGFeMllO3ShoPqowjKoWi+LVwgaI
         9tVHfmZVKB7CDq0KvV4YOszpcwCtqKQH3uAo9CS6re/1RjnwPQceVF/adLy0vHGJ7LC2
         pVlHNJnE4AzLYC3hn00soaIRONHyRmHzPQrEyg/hrR638kLHrjO6DSgEI0hMosb8AGDr
         qd9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/PkiyJzvcVZWu52gjNR1LQ3PdwHSj0orMJXXNswozeg=;
        fh=H8HwgJph1caNltFILmOxHNp/dA7xFDJSwI9mck8jZPQ=;
        b=n3ASd3AxsDFym0y14a7dnOqzvMa0EYoOvVKBQEZEZ/U9QATDSCJ6awTkE3PizXJ7DH
         6NUzgXFjE6jfv1v5hz2cRewovQLc96JvrdrJUlI1SRUlYlshvRLoHMxizw+aDc/nzwc3
         CZLhG9e2mw+hKavXYj29LVNYO9LNdQNkV6Xf0Qdt6dQSW4OMbjsfbzvFhgAlQrZ6Vc+S
         5NDfrDU1gw6LTs4b1vyJiNWViufYKJKYwTkmeqKtjut9cLd4GU8M4Qd3oGpRpiPuvsII
         kWaoxCOvWYAHypf5fFrEm0+7NM9LS1aJomvbyZKuaDVSy1/r6oEl1yaeISL9pL8HP9Z/
         DC2A==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1783178723; x=1783783523; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/PkiyJzvcVZWu52gjNR1LQ3PdwHSj0orMJXXNswozeg=;
        b=oVt8bdLvk5xvWCQU6f4G+H5Yd08fz3dbCFfobwahyEJLoVvZ5ZxzqHb9DzlW6bo6Ap
         U0HUvGMMWghDY/d8Ii6TSy/4juz51lekCqgQ+R3HhAFq7rYVXKfoHvhSLFKIF4hnsB6H
         TsLMMTyp7AqOyLeyhRM4+zdeDKwnQ68ambwKfNMWrCB8yM0ZNBNCTIss5j7nguwrGHX5
         9tOQXSKLo/rNsZtbO6Q3L/GGYfs51WFUZuuoMn7dvjs/d2op3X1G6tx8lVBP04upK3PG
         ghoPxUrbEBFpUMY3Z86uQvikKT1TxGlauvSoY4us+4C5x1o9DuVJEXPN8ZjrPSXOgoUL
         GHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783178723; x=1783783523;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/PkiyJzvcVZWu52gjNR1LQ3PdwHSj0orMJXXNswozeg=;
        b=QrW7U6aigbvDxTrUySohxl1L2Glz4+1/u8OWfBOhasd5mbHhe7dIvQfZDyVMh94jlu
         WhpFcM69VKK2Q8tWMRNF9aiGDDTAmP0cOwqRemXXekqCEgcn06LQIewkvsiRDlgBDSJO
         +DgW5P6ctzVaGmTITdwgdH3JnM1eHH3wgu4OOPNmP62FLLz9e0lWPSBIXIrVrvb0OweN
         Qmz3z5nW+asGzBFjeb5MkUwRFBAhYgkpi6Qm9LbfIthLVijSW8zuA1Wp9m1WqLZmY8Km
         geupv0SQaXtF3x7weQQYG0cZ+0xLbxnc49cBY3caRrNgfi/Ol3TkhJeFCnqHQdvj6pWg
         3Gsw==
X-Gm-Message-State: AOJu0YzFSqMZqEWoyv6xYRCaHfAw62fiHQAyyztdknD1RAff/Ml6+6J+
	b66YjnDeezFLBIxEPsFKS1eIz1TUrCNtZ9q0zIW8OoUpvJgMwffYhT/gZ5x8YGbkGB0BoebN3tF
	FRtCyZYNfdYXytic87JW7f52r+tiSora6xiXqkyBeks8g
X-Gm-Gg: AfdE7cmffiXHAoDyvDN14+G+sKISjyOqQoSre3+boMTJSBV0pRYJGP79GEny4JUxlvv
	oznn/IRQ8+4BfBTW6m1EpYLFYVM+KOCLAVDfPT11+FYdvcsLUJIIP2YjSPDi2EA9JTFUJ8hEEXi
	egUt2uRcctsnN/n1SEt4MQV8l1NH8UC9Jr/75wB2dsd1nR4yEVpAX6gzztsE0cKqGNlulyyUr4m
	1gBan5PgZhaof34nySn6JRW//fGuWDMv4Fbc8lAOc9bXeIWR69zyyIvsRUi2XY2vGGwVF+S5s8N
	82I1
X-Received: by 2002:a05:690e:e8b:b0:664:6d12:1f3b with SMTP id
 956f58d0204a3-66652dcebedmr3712052d50.3.1783178723117; Sat, 04 Jul 2026
 08:25:23 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB9126AD2BAD8585D2EFFFA073ECF72@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <SJ0PR09MB9126DC2ACEE891812F0FAE53ECF62@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <SJ0PR09MB91266A3647902D5C21B21B24ECF52@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB91266A3647902D5C21B21B24ECF52@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 4 Jul 2026 10:25:06 -0500
X-Gm-Features: AVVi8CftAgV8-4ASeShePoPrRnhkCgskW1VXOl8kc_VjMfAt_wJaKZwkKEUQC1M
Message-ID: <CAFche=i1+JJwWxDH34cr9OvyP8zLrfBPvEVqCG5JqQE3=fozcw@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: R5INXMPJFKUUWMBOLKWMDDC5NHKZIBXK
X-Message-ID-Hash: R5INXMPJFKUUWMBOLKWMDDC5NHKZIBXK
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 RFNoC build with TX FIFO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R5INXMPJFKUUWMBOLKWMDDC5NHKZIBXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7179209755357493567=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER(0.00)[wade.fife@ettus.com,usrp-users-bounces@lists.ettus.com];
	FORGED_RECIPIENTS(0.00)[m:eugene.grayver@aero.org,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wade.fife@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,mm2.emwd.com:helo,mm2.emwd.com:rdns,aero.org:email,lists.ettus.com:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E46A3707D7C

--===============7179209755357493567==
Content-Type: multipart/alternative; boundary="0000000000005cd9e10655caa646"

--0000000000005cd9e10655caa646
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It looks like you based this on the 200 MHz image, but you set RF_BW to
400. So, I think the radio is exceeding the transfer rate of this image. If
you want 200 MHz bandwidth, then change that parameter to 200. If you want
400 MHz bandwidth, then you'll need to increase the CHDR width to 128. The
X440 CHDR bus has a 200 MHz bus, so a 64-bit width limits you to less than
400 Msps.

Wade

On Thu, Jul 2, 2026 at 12:54=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Sorry for the spam =E2=80=94 the issue with rebuild was my mistake =E2=80=
=94 I had a typo
> in the .yml that was being built (the one attached to previous message wa=
s
> correct).
>
> I can now rebuild an image w/out RX DDC and w/ RX radio going nowhere.
> The fixed connection is EP->DmaFIFO->DUC->Radio.
>
> Usrp_probe gives the expected result as shown below.
>
> Unfortunately running a tx-only benchmark results in an immediate and
> continuous stream of 'U'.  What am I missing?  Is this not the expected u=
se
> pattern for DmaFIFO?
>
> Thanks
>
> ----------
> |     _____________________________________________________
> |    /
> |   |       RFNoC blocks on this device:
> |   |
> |   |   * 0/DUC#0
> |   |   * 0/DUC#1
> |   |   * 0/DmaFIFO#0
> |   |   * 0/DmaFIFO#1
> |   |   * 0/Radio#0
> |   |   * 0/Radio#1
> |     _____________________________________________________
> |    /
> |   |       Static connections on this device:
> |   |
> |   |   * 0/SEP#0:0=3D=3D>0/DmaFIFO#0:0
> |   |   * 0/DmaFIFO#0:0=3D=3D>0/DUC#0:0
> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
> |   |   * 0/SEP#1:0=3D=3D>0/DmaFIFO#0:1
> |   |   * 0/DmaFIFO#0:1=3D=3D>0/DUC#0:1
> |   |   * 0/DUC#0:1=3D=3D>0/Radio#0:1
> |   |   * 0/SEP#2:0=3D=3D>0/DmaFIFO#0:2
> |   |   * 0/DmaFIFO#0:2=3D=3D>0/DUC#0:2
> |   |   * 0/DUC#0:2=3D=3D>0/Radio#0:2
> |   |   * 0/SEP#3:0=3D=3D>0/DmaFIFO#0:3
> |   |   * 0/DmaFIFO#0:3=3D=3D>0/DUC#0:3
> |   |   * 0/DUC#0:3=3D=3D>0/Radio#0:3
> |   |   * 0/SEP#4:0=3D=3D>0/DmaFIFO#1:0
> |   |   * 0/DmaFIFO#1:0=3D=3D>0/DUC#1:0
> |   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
> |   |   * 0/SEP#5:0=3D=3D>0/DmaFIFO#1:1
> |   |   * 0/DmaFIFO#1:1=3D=3D>0/DUC#1:1
> |   |   * 0/DUC#1:1=3D=3D>0/Radio#1:1
> |   |   * 0/SEP#6:0=3D=3D>0/DmaFIFO#1:2
> |   |   * 0/DmaFIFO#1:2=3D=3D>0/DUC#1:2
> |   |   * 0/DUC#1:2=3D=3D>0/Radio#1:2
> |   |   * 0/SEP#7:0=3D=3D>0/DmaFIFO#1:3
> |   |   * 0/DmaFIFO#1:3=3D=3D>0/DUC#1:3
> |   |   * 0/DUC#1:3=3D=3D>0/Radio#1:3
> ------------
>
>
> ------------------------------
> *From:* Eugene Grayver <eugene.grayver@aero.org>
> *Sent:* Wednesday, July 1, 2026 11:03 AM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* Re: X440 RFNoC build with TX FIFO
>
> Hi,
> Turns out even rebuilding the stock .yml results in the same error.  Is
> there something wrong with either my build or with the version of FPGA co=
de
> checked in?
> Eugene.
> ------------------------------
> *From:* Eugene Grayver <eugene.grayver@aero.org>
> *Sent:* Tuesday, June 30, 2026 4:33 PM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* X440 RFNoC build with TX FIFO
>
> Hi,
>
> I am trying to work around the underflows on the TX.
>
> I added a AXI DMA FIFO and rebuilt.  As far as I can tell the yaml is OK,
> but when I load the new bit file,
>
> uhd_image_loader --args
> type=3Dx4xx,addr=3D192.168.10.2,clock_source=3Dinternal,time_source=3Dint=
ernal
> --fpga-path
> ./uhd-4.9.0.1/fpga/usrp3/top/x400//build-usrp_x440_fpga_X4_200_fifo/X440.=
bit
>
> I get an error:
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RfnocError: Specified destination address is unreachable: 1:0
>
> Note: I had to rename the resultant bit file from x4xx.bit to X440.bit to
> avoid an error related to a missing .dts file (since the DTS file is
> correctly named X440.dts).
>
>
> Here's the .yml file.  Note that I removed the RX DDC to reduce the FPGA
> congestion.
>
> -----------------------
> # General parameters
> # -----------------------------------------
> schema: rfnoc_imagebuilder_args          # Identifier for the schema used
> to validate this file
> copyright: >-                            # Copyright information used in
> file headers
>   Copyright 2023 Ettus Research, a National Instruments Brand
> license: >-                              # License information used in
> file headers
>   SPDX-License-Identifier: LGPL-3.0-or-later
> version: '1.0'                           # File version
> chdr_width: 64                           # Bit width of the CHDR bus for
> this image
> device: 'x440'                           # USRP type
> image_core_name: 'usrp_x440_fpga_X4_200_fifo' # Name to use for the
> generated output files
> default_target: 'X440'                   # Default make target
> inherit:
>   - 'yaml_include/x440_radio_base.yml'
>   - 'yaml_include/x4xx_x4_base.yml'
>
> parameters:
>   RF_BW: 400
>   ENABLE_DRAM: True
>   NUM_DRAM_BANKS: 2
>   NUM_DRAM_CHANS: 8
>   DRAM_WIDTH: 128
>
> # A list of all stream endpoints in design
> # ----------------------------------------
> stream_endpoints:
>   ep0:                                  # Stream endpoint name
>     ctrl: True                          # Endpoint passes control traffic
>     data: True                          # Endpoint passes data traffic
>     buff_size_bytes: 262144             # Ingress buffer size for data
>   ep1:
>     ctrl: False
>     data: True
>     buff_size_bytes: 262144
>   ep2:
>     ctrl: False
>     data: True
>     buff_size_bytes: 262144
>   ep3:
>     ctrl: False
>     data: True
>     buff_size_bytes: 262144
>   ep4:
>     ctrl: False
>     data: True
>     buff_size_bytes: 262144
>   ep5:
>     ctrl: False
>     data: True
>     buff_size_bytes: 262144
>   ep6:
>     ctrl: False
>     data: True
>     buff_size_bytes: 262144
>   ep7:
>     ctrl: False
>     data: True
>     buff_size_bytes: 262144
>
> # A table of which crossbar routes to include
> # -------------------------------------------
> # Rows correspond to input ports and columns correspond to output ports.
> # Entering a 1 includes and a 0 removes that route from the crossbar.
> crossbar_routes:
>   #  eth0  eth2  dma   ep1   ep3   ep5   ep7
>   #     eth1  eth3  ep0   ep2   ep4   ep6
>   - [ 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth0 (QSFP Port 0, Lane 0=
)
>   - [ 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth1 (QSFP Port 0, Lane 1=
)
>   - [ 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth2 (QSFP Port 0, Lane 2=
)
>   - [ 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth3 (QSFP Port 0, Lane 3=
)
>   - [ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1 ] # dma
>   - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep0 (radio0.0)
>   - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep1 (radio0.1)
>   - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep2 (radio0.2)
>   - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep3 (radio0.3)
>   - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep4 (radio1.0)
>   - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep5 (radio1.1)
>   - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep6 (radio1.2)
>   - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep7 (radio1.3)
>
> # A list of all NoC blocks in design
> # ----------------------------------
> noc_blocks:
>   radio0:
>     block_desc: 'radio.yml'
>     parameters:
>       NUM_PORTS: 4
>   radio1:
>     block_desc: 'radio.yml'
>     parameters:
>       NUM_PORTS: 4
>   duc0:
>     block_desc: 'duc.yml'
>     parameters:
>       NUM_PORTS: 4
>   duc1:
>     block_desc: 'duc.yml'
>     parameters:
>       NUM_PORTS: 4
>   fifo0:
>     block_desc: 'axi_ram_fifo.yml'
>     parameters:
>       NUM_PORTS: 4
>       MEM_ADDR_W:   32
>       MEM_DATA_W:   128
>       MEM_CLK_RATE: "300e6"
>       # Create 4 non-overlapping 2 MB buffers
>       FIFO_ADDR_BASE: "{32'h00600000, 32'h00400000, 32'h00200000,
> 32'h00000000}"
>       FIFO_ADDR_MASK: "{32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF,
> 32'h001FFFFF}"
>
>   fifo1:
>     block_desc: 'axi_ram_fifo.yml'
>     parameters:
>       NUM_PORTS: 4
>       MEM_ADDR_W:   32
>       MEM_DATA_W:   128
>       MEM_CLK_RATE: "300e6"
>       # Create 4 non-overlapping 2 MB buffers
>       FIFO_ADDR_BASE: "{32'h00600000, 32'h00400000, 32'h00200000,
> 32'h00000000}"
>       FIFO_ADDR_MASK: "{32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF,
> 32'h001FFFFF}"
>
> # A list of all static connections in design
> # ------------------------------------------
> # Format: A list of connection maps (list of key-value pairs) with the
> following keys
> #   - srcblk  =3D Source block to connect
> #   - srcport =3D Port on the source block to connect
> #   - dstblk  =3D Destination block to connect
> #   - dstport =3D Port on the destination block to connect
> connections:
>   # RF A:0 TX
>   - { srcblk: ep0,    srcport: out0,  dstblk: fifo0,  dstport: in_0 }
>   - { srcblk: fifo0,  srcport: out_0, dstblk: duc0,   dstport: in_0 }
>   - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
>   # RF A:1 TX
>   - { srcblk: ep1,    srcport: out0,  dstblk: fifo0,  dstport: in_1 }
>   - { srcblk: fifo0,  srcport: out_1, dstblk: duc0,   dstport: in_1 }
>   - { srcblk: duc0,   srcport: out_1, dstblk: radio0, dstport: in_1 }
>   # RF A:2 TX
>   - { srcblk: ep2,    srcport: out0,  dstblk: fifo0,  dstport: in_2 }
>   - { srcblk: fifo0,  srcport: out_2, dstblk: duc0,   dstport: in_2 }
>   - { srcblk: duc0,   srcport: out_2, dstblk: radio0, dstport: in_2 }
>   # RF A:3 TX
>   - { srcblk: ep3,    srcport: out0,  dstblk: fifo0,  dstport: in_3 }
>   - { srcblk: fifo0,  srcport: out_3, dstblk: duc0,   dstport: in_3 }
>   - { srcblk: duc0,   srcport: out_3, dstblk: radio0, dstport: in_3 }
>   #
>   # RF B:0 TX
>   - { srcblk: ep4,    srcport: out0,  dstblk: fifo1,  dstport: in_0 }
>   - { srcblk: fifo1,  srcport: out_0, dstblk: duc1,   dstport: in_0 }
>   - { srcblk: duc1,   srcport: out_0, dstblk: radio1, dstport: in_0 }
>   # RF B:1 TX
>   - { srcblk: ep5,    srcport: out0,  dstblk: fifo1,  dstport: in_1 }
>   - { srcblk: fifo1,  srcport: out_1, dstblk: duc1,   dstport: in_1 }
>   - { srcblk: duc1,   srcport: out_1, dstblk: radio1, dstport: in_1 }
>   # RF B:2 TX
>   - { srcblk: ep6,    srcport: out0,  dstblk: fifo1,  dstport: in_2 }
>   - { srcblk: fifo1,  srcport: out_2, dstblk: duc1,   dstport: in_2 }
>   - { srcblk: duc1,   srcport: out_2, dstblk: radio1, dstport: in_2 }
>   # RF B:3 TX
>   - { srcblk: ep7,    srcport: out0,  dstblk: fifo1,  dstport: in_3 }
>   - { srcblk: fifo1,  srcport: out_3, dstblk: duc1,   dstport: in_3 }
>   - { srcblk: duc1,   srcport: out_3, dstblk: radio1, dstport: in_3 }
>   #
>   # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport:
> gpio0 }
>   # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport:
> gpio1 }
>   # BSP connections are inherited from YAML include files
>   - { srcblk: fifo0, srcport: axi_ram, dstblk: _device_, dstport: dram0 }
>   - { srcblk: fifo1, srcport: axi_ram, dstblk: _device_, dstport: dram1 }
>
>   - { srcblk: radio0, srcport: out_0, dstblk: ep0,    dstport: in0  }
>   - { srcblk: radio0, srcport: out_1, dstblk: ep1,    dstport: in0  }
>   - { srcblk: radio0, srcport: out_2, dstblk: ep2,    dstport: in0  }
>   - { srcblk: radio0, srcport: out_3, dstblk: ep3,    dstport: in0  }
>   - { srcblk: radio1, srcport: out_0, dstblk: ep4,    dstport: in0  }
>   - { srcblk: radio1, srcport: out_1, dstblk: ep5,    dstport: in0  }
>   - { srcblk: radio1, srcport: out_2, dstblk: ep6,    dstport: in0  }
>   - { srcblk: radio1, srcport: out_3, dstblk: ep7,    dstport: in0  }
>
>
>
> # A list of all clock domain connections in design
> # ------------------------------------------------
> # Format: A list of connection maps (list of key-value pairs) with the
> following keys
> #   - srcblk  =3D Source block to connect (Always "_device"_)
> #   - srcport =3D Clock domain on the source block to connect
> #   - dstblk  =3D Destination block to connect
> #   - dstport =3D Clock domain on the destination block to connect
> clk_domains:
>   - { srcblk: _device_, srcport: ce,         dstblk: duc0,   dstport: ce
>  }
>   - { srcblk: _device_, srcport: ce,         dstblk: duc1,   dstport: ce
>  }
>   # Other clock domains are inherited from YAML include files
>   - { srcblk: _device_, srcport: dram,   dstblk: fifo0, dstport: mem   }
>   - { srcblk: _device_, srcport: dram,   dstblk: fifo1, dstport: mem   }
>
>
> --------------------------------
>
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005cd9e10655caa646
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It looks like you based this on the 200 MHz image, bu=
t you set RF_BW to 400. So, I think the radio is exceeding the transfer rat=
e of this image. If you want 200 MHz bandwidth, then change that parameter =
to 200. If you want 400 MHz bandwidth, then you&#39;ll need to increase the=
 CHDR width to 128. The X440 CHDR bus has a 200 MHz bus, so a 64-bit width =
limits you to less than 400 Msps.</div><div><br></div><div>Wade</div></div>=
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jul 2, 2026 at 12:54=E2=80=AFPM Eugene Grayver &lt;=
<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aero.org</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div clas=
s=3D"msg7194351969346441366">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Sorry for the spam =E2=80=94 the issue with rebuild was my mistake =E2=80=
=94 I had a typo in the .yml that was being built (the one attached to prev=
ious message was correct).=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I can now rebuild an image w/out RX DDC and w/ RX radio going nowhere.=C2=
=A0 The fixed connection is EP-&gt;DmaFIFO-&gt;DUC-&gt;Radio.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Usrp_probe gives the expected result as shown below.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Unfortunately running a tx-only benchmark results in an immediate and conti=
nuous stream of &#39;U&#39;.=C2=A0 What am I missing?=C2=A0 Is this not the=
 expected use pattern for DmaFIFO?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
----------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 =C2=A0 _____________________________________________________</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 =C2=A0/</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 |</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DUC#0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DUC#1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DmaFIFO#0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DmaFIFO#1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/Radio#0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/Radio#1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 =C2=A0 _____________________________________________________</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 =C2=A0/</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 |</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DmaFIFO#0:0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DmaFIFO#0:0=3D=3D&gt;0/DUC#0:0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/SEP#1:0=3D=3D&gt;0/DmaFIFO#0:1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DmaFIFO#0:1=3D=3D&gt;0/DUC#0:1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DUC#0:1=3D=3D&gt;0/Radio#0:1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DmaFIFO#0:2</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DmaFIFO#0:2=3D=3D&gt;0/DUC#0:2</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DUC#0:2=3D=3D&gt;0/Radio#0:2</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/SEP#3:0=3D=3D&gt;0/DmaFIFO#0:3</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DmaFIFO#0:3=3D=3D&gt;0/DUC#0:3</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DUC#0:3=3D=3D&gt;0/Radio#0:3</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/DmaFIFO#1:0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DmaFIFO#1:0=3D=3D&gt;0/DUC#1:0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D&gt;0/DmaFIFO#1:1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DmaFIFO#1:1=3D=3D&gt;0/DUC#1:1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DUC#1:1=3D=3D&gt;0/Radio#1:1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/SEP#6:0=3D=3D&gt;0/DmaFIFO#1:2</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DmaFIFO#1:2=3D=3D&gt;0/DUC#1:2</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DUC#1:2=3D=3D&gt;0/Radio#1:2</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/SEP#7:0=3D=3D&gt;0/DmaFIFO#1:3</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DmaFIFO#1:3=3D=3D&gt;0/DUC#1:3</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
| =C2=A0 | =C2=A0 * 0/DUC#1:3=3D=3D&gt;0/Radio#1:3</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_7194351969346441366appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_7194351969346441366divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_bl=
ank">eugene.grayver@aero.org</a>&gt;<br>
<b>Sent:</b> Wednesday, July 1, 2026 11:03 AM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: X440 RFNoC build with TX FIFO</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Turns out even rebuilding the stock .yml results in the same error.=C2=A0 I=
s there something wrong with either my build or with the version of FPGA co=
de checked in?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene.</div>
<div id=3D"m_7194351969346441366x_appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_7194351969346441366x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"=
Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b=
> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_=
blank">eugene.grayver@aero.org</a>&gt;<br>
<b>Sent:</b> Tuesday, June 30, 2026 4:33 PM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> X440 RFNoC build with TX FIFO</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am trying to work around the underflows on the TX.=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I added a AXI DMA FIFO and rebuilt.=C2=A0 As far as I can tell the yaml is =
OK, but when I load the new bit file,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
uhd_image_loader --args type=3Dx4xx,addr=3D192.168.10.2,clock_source=3Dinte=
rnal,time_source=3Dinternal --fpga-path ./uhd-4.9.0.1/fpga/usrp3/top/x400//=
build-usrp_x440_fpga_X4_200_fifo/X440.bit</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I get an error:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: Specified destination address is unreachable: 1:0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Note: I had to rename the resultant bit file from x4xx.bit to X440.bit to a=
void an error related to a missing .dts file (since the DTS file is correct=
ly named X440.dts).</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Here&#39;s the .yml file.=C2=A0 Note that I removed the RX DDC to reduce th=
e FPGA congestion.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
-----------------------</div>
<div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# General parameters</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# -----------------------------------------</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
schema: rfnoc_imagebuilder_args=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Id=
entifier for the schema used to validate this file</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
copyright: &gt;-=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Copyright information used i=
n file headers</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 Copyright 2023 Ettus Research, a National Instruments Brand</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
license: &gt;-=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# License information used=
 in file headers</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 SPDX-License-Identifier: LGPL-3.0-or-later</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
version: &#39;1.0&#39;=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # File version</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
chdr_width: 64=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Bit width of the CHDR bus for this im=
age</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
device: &#39;x440&#39;=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # USRP type</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
image_core_name: &#39;usrp_x440_fpga_X4_200_fifo&#39; # Name to use for the=
 generated output files</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
default_target: &#39;X440&#39;=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 # Default make target</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
inherit:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - &#39;yaml_include/x440_radio_base.yml&#39;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - &#39;yaml_include/x4xx_x4_base.yml&#39;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
parameters:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 RF_BW: 400</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 ENABLE_DRAM: True</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 NUM_DRAM_BANKS: 2</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 NUM_DRAM_CHANS: 8</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 DRAM_WIDTH: 128</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# A list of all stream endpoints in design</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# ----------------------------------------</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
stream_endpoints:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 ep0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Stream endpoint na=
me</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 ctrl: True=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traf=
fic</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 data: True=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic=
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 buff_size_bytes: 262144=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Ingress buffer size for data</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 ep1:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 ctrl: False</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 data: True</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 buff_size_bytes: 262144</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 ep2:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 ctrl: False</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 data: True</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 buff_size_bytes: 262144</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 ep3:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 ctrl: False</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 data: True</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 buff_size_bytes: 262144</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 ep4:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 ctrl: False</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 data: True</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 buff_size_bytes: 262144</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 ep5:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 ctrl: False</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 data: True</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 buff_size_bytes: 262144</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 ep6:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 ctrl: False</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 data: True</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 buff_size_bytes: 262144</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 ep7:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 ctrl: False</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 data: True</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 buff_size_bytes: 262144</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# A table of which crossbar routes to include</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# -------------------------------------------</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# Rows correspond to input ports and columns correspond to output ports.</d=
iv>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# Entering a 1 includes and a 0 removes that route from the crossbar.</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
crossbar_routes:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # =C2=A0eth0 =C2=A0eth2 =C2=A0dma =C2=A0 ep1 =C2=A0 ep3 =C2=A0 ep5 =
=C2=A0 ep7</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # =C2=A0 =C2=A0 eth1 =C2=A0eth3 =C2=A0ep0 =C2=A0 ep2 =C2=A0 ep4 =C2=
=A0 ep6</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1=C2=A0] # eth0 (QSFP Port 0=
, Lane 0)</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1=C2=A0] # eth1 (QSFP Port 0=
, Lane 1)</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1=C2=A0] # eth2 (QSFP Port 0=
, Lane 2)</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1=C2=A0] # eth3 (QSFP Port 0=
, Lane 3)</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1=C2=A0] # dma</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0=C2=A0] # ep0 (radio0.0)</d=
iv>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0=C2=A0] # ep1 (radio0.1)</d=
iv>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0=C2=A0] # ep2 (radio0.2)</d=
iv>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0=C2=A0] # ep3 (radio0.3)</d=
iv>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0=C2=A0] # ep4 (radio1.0)</d=
iv>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0=C2=A0] # ep5 (radio1.1)</d=
iv>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0=C2=A0] # ep6 (radio1.2)</d=
iv>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0=C2=A0] # ep7 (radio1.3)</d=
iv>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# A list of all NoC blocks in design</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# ----------------------------------</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
noc_blocks:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 radio0:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 block_desc: &#39;radio.yml&#39;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 parameters:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 4</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 radio1:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 block_desc: &#39;radio.yml&#39;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 parameters:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 4</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 duc0:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 block_desc: &#39;duc.yml&#39;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 parameters:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 4</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 duc1:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 block_desc: &#39;duc.yml&#39;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 parameters:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 4</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 fifo0:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 block_desc: &#39;axi_ram_fifo.yml&#39;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 parameters:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 4</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: =C2=A0 32</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 MEM_DATA_W: =C2=A0 128</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 MEM_CLK_RATE: &quot;300e6&quot;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 # Create 4 non-overlapping 2 MB buffers</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{32&#39;h00600000, 32&#39;h00400=
000, 32&#39;h00200000, 32&#39;h00000000}&quot;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{32&#39;h001FFFFF, 32&#39;h001FF=
FFF, 32&#39;h001FFFFF, 32&#39;h001FFFFF}&quot;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 fifo1:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 block_desc: &#39;axi_ram_fifo.yml&#39;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 parameters:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 4</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: =C2=A0 32</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 MEM_DATA_W: =C2=A0 128</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 MEM_CLK_RATE: &quot;300e6&quot;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 # Create 4 non-overlapping 2 MB buffers</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{32&#39;h00600000, 32&#39;h00400=
000, 32&#39;h00200000, 32&#39;h00000000}&quot;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{32&#39;h001FFFFF, 32&#39;h001FF=
FFF, 32&#39;h001FFFFF, 32&#39;h001FFFFF}&quot;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# A list of all static connections in design</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# ------------------------------------------</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# =C2=A0 - srcblk =C2=A0=3D Source block to connect</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# =C2=A0 - srcport =3D Port on the source block to connect</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# =C2=A0 - dstblk =C2=A0=3D Destination block to connect</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# =C2=A0 - dstport =3D Port on the destination block to connect</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
connections:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # RF A:0 TX</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: ep0, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: fifo0, =
=C2=A0dstport: in_0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: fifo0, =C2=A0srcport: out_0, dstblk: duc0, =C2=A0 dstpor=
t: in_0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: duc0, =C2=A0 srcport: out_0, dstblk: radio0, dstport: in=
_0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # RF A:1 TX</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: ep1, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: fifo0, =
=C2=A0dstport: in_1=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: fifo0, =C2=A0srcport: out_1, dstblk: duc0, =C2=A0 dstpor=
t: in_1=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: duc0, =C2=A0 srcport: out_1, dstblk: radio0, dstport: in=
_1=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # RF A:2 TX</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: ep2, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: fifo0, =
=C2=A0dstport: in_2=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: fifo0, =C2=A0srcport: out_2, dstblk: duc0, =C2=A0 dstpor=
t: in_2=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: duc0, =C2=A0 srcport: out_2, dstblk: radio0, dstport: in=
_2=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # RF A:3 TX</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: ep3, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: fifo0, =
=C2=A0dstport: in_3=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: fifo0, =C2=A0srcport: out_3, dstblk: duc0, =C2=A0 dstpor=
t: in_3=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: duc0, =C2=A0 srcport: out_3, dstblk: radio0, dstport: in=
_3=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 #</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # RF B:0 TX</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: ep4, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: fifo1, =
=C2=A0dstport: in_0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: fifo1, =C2=A0srcport: out_0, dstblk: duc1, =C2=A0 dstpor=
t: in_0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: duc1, =C2=A0 srcport: out_0, dstblk: radio1, dstport: in=
_0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # RF B:1 TX</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: ep5, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: fifo1, =
=C2=A0dstport: in_1=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: fifo1, =C2=A0srcport: out_1, dstblk: duc1, =C2=A0 dstpor=
t: in_1=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: duc1, =C2=A0 srcport: out_1, dstblk: radio1, dstport: in=
_1=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # RF B:2 TX</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: ep6, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: fifo1, =
=C2=A0dstport: in_2=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: fifo1, =C2=A0srcport: out_2, dstblk: duc1, =C2=A0 dstpor=
t: in_2=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: duc1, =C2=A0 srcport: out_2, dstblk: radio1, dstport: in=
_2=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # RF B:3 TX</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: ep7, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: fifo1, =
=C2=A0dstport: in_3=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: fifo1, =C2=A0srcport: out_3, dstblk: duc1, =C2=A0 dstpor=
t: in_3=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: duc1, =C2=A0 srcport: out_3, dstblk: radio1, dstport: in=
_3=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 #</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: =
gpio0 }</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: =
gpio1 }</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # BSP connections are inherited from YAML include files</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: fifo0, srcport: axi_ram, dstblk: _device_, dstport: dram=
0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: fifo1, srcport: axi_ram, dstblk: _device_, dstport: dram=
1=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: radio0, srcport: out_0, dstblk: ep0, =C2=A0 =C2=A0dstpor=
t: in0=C2=A0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: radio0, srcport: out_1, dstblk: ep1, =C2=A0 =C2=A0dstpor=
t: in0=C2=A0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: radio0, srcport: out_2, dstblk: ep2, =C2=A0 =C2=A0dstpor=
t: in0=C2=A0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: radio0, srcport: out_3, dstblk: ep3, =C2=A0 =C2=A0dstpor=
t: in0=C2=A0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: radio1, srcport: out_0, dstblk: ep4, =C2=A0 =C2=A0dstpor=
t: in0=C2=A0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: radio1, srcport: out_1, dstblk: ep5, =C2=A0 =C2=A0dstpor=
t: in0=C2=A0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: radio1, srcport: out_2, dstblk: ep6, =C2=A0 =C2=A0dstpor=
t: in0=C2=A0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: radio1, srcport: out_3, dstblk: ep7, =C2=A0 =C2=A0dstpor=
t: in0=C2=A0=C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# A list of all clock domain connections in design</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# ------------------------------------------------</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# =C2=A0 - srcblk =C2=A0=3D Source block to connect (Always &quot;_device&q=
uot;_)</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# =C2=A0 - srcport =3D Clock domain on the source block to connect</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# =C2=A0 - dstblk =C2=A0=3D Destination block to connect</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
# =C2=A0 - dstport =3D Clock domain on the destination block to connect</di=
v>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
clk_domains:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: _device_, srcport: ce, =C2=A0 =C2=A0 =C2=A0 =C2=A0 dstbl=
k: duc0, =C2=A0 dstport: ce=C2=A0=C2=A0 =C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: _device_, srcport: ce, =C2=A0 =C2=A0 =C2=A0 =C2=A0 dstbl=
k: duc1, =C2=A0 dstport: ce=C2=A0=C2=A0 =C2=A0}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 # Other clock domains are inherited from YAML include files</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: _device_, srcport: dram, =C2=A0 dstblk: fifo0, dstport: =
mem=C2=A0=C2=A0 }</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 - { srcblk: _device_, srcport: dram, =C2=A0 dstblk: fifo1, dstport: =
mem=C2=A0=C2=A0 }</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
--------------------------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_7194351969346441366x_x_Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000005cd9e10655caa646--

--===============7179209755357493567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7179209755357493567==--
