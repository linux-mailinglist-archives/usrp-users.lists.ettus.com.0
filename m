Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4RpdGH08IGohzAAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 03 Jun 2026 16:38:53 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D0F638AD8
	for <lists+usrp-users@lfdr.de>; Wed, 03 Jun 2026 16:38:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=NHJzYxOn;
	dkim=fail ("body hash did not verify") header.d=nd.edu header.s=google header.b=Fnun8Xt7;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 557E03864C6
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jun 2026 10:38:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1780497531; bh=SCd+qcdcLLAt15DcYebWa8iNPpld+BEyZAmiclAPFGw=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=NHJzYxOnaP/q7lsnztIndAAkcaQxhh27UyH2VkRMVWuvDfAuSXYxA+ZGQg6jwv41V
	 Got/HiN/y5QNSKaKj3tITP6Qu9qGi5v2+kA51pjoxCC8cL3F5aY/SdZW7e+CXgL3TU
	 poUTkfn1wudzQq/9+bYLRTETcRTZAbTDX6vUcnzK9BO9HLw8j7QP4UJ/pTNQqlRQ6E
	 2SWlFkbJyqMEQ+f3ApYw7GtBIXxo6V6vLZAswbG2LYMKkeSMRw+3BiK1p9IKbIPJ8P
	 cntts43f8TmEDDU42qV+6SSxuRNKvTP7FLVXbthdz3ohBIq5XW6cLUgCV7MzmVtAKl
	 WbNNu5CLJitgg==
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 854B638643B
	for <usrp-users@lists.ettus.com>; Wed,  3 Jun 2026 10:35:35 -0400 (EDT)
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-6607e80a846so3621299d50.2
        for <usrp-users@lists.ettus.com>; Wed, 03 Jun 2026 07:35:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780497335; cv=none;
        d=google.com; s=arc-20240605;
        b=PR1Za8XDYRbod5m2nzrveSNBnmXq78ktuVessXSLCtE3nOWEzQm8MGl9fH9Vt6tkG3
         wlFJvsAxeL0cUfW2LFzeJHOvTSToiWFOh+Wj2ld2pUAwd4G28g+4CcTlLkvL5+0AGeaw
         sTxNFUwQVewWtpjxm2Bv+GMg0JVY3n7Uk8QXWqVqPSJ66mp3aEWjTgn5r588B3VZaRDh
         B3JH1FIiogkCE0yGnK4tIGauAyddRqK+k0yBpSvW5Z+dyzXLvv31cZobiKE9aru6SKcR
         0+fQ+BYCxeoMq3D4Eqyt818C+59l/iNk+KIm5gvVoAJMCt0EHNfQIVEuydRKMlqswpR/
         rfhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XCPjCXvHbhuHFHe3qafNC7OsGOK1OulXbLpmppwSw7g=;
        fh=zVmoyH26z6MzJJI6YVSrN64Nd7a1jURGGHbUG7O6htQ=;
        b=ZXOXo82v8c7kODV8AEkgNL9Vu1r1XuTmOWrT8bQXusFI373RxquL2Npz95mFmO9G1Q
         86CRMOuMX5cAfUUwKjJre2tp6cBJdgXMO6+mAMoOE7sXp/ybA2yr8MuTcFChD343aT0A
         Q28J8wdALFLJc3YBttpkLXTH+IlgvcKrnUV9pGfea7yrQ3nlRJRo1WIU3yAx5UtFuGjT
         RrHoTV0r4vS2k4LzOrkY1tj+JR18jPJgMFodGsEDQl1yHlPeeF0PaA7vD+iFtk28huTT
         xWQaVTDmiju+VxynSHj9bb1GvxtCYLkuOfyYyya0lebjbeFBnlgdMRNCIqYVxmpujCrW
         jsqw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1780497335; x=1781102135; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XCPjCXvHbhuHFHe3qafNC7OsGOK1OulXbLpmppwSw7g=;
        b=Fnun8Xt7NoiAcErIcPU9NZQt5iQbg0qp5mPnedwhw98herl2tOl6RR89HClkIlFqw/
         7f/v3ckFdzPJmvPVByt2UsAycl0Mrqt1yQ1t5jrkzf3kIpz8NzLm5FYbL+wTRoG3nBQj
         2vQ+aEX0VJaYwVOAIxakn9AZl7cuRLDh1nzjYkmAUqtCNgra/3/9BqPWMq/XVDvKA6SR
         e9X2TUa7A9zwLerQFHrxeP4IG7WyRvWG6ZQC6xXLHv2J8VJUe7wJ7DW6GZw3T2hGktzI
         8HNLsKPN7a6sg1Scx1m7YpLVul/ydbgKQ8Y69BVIZvG5wyMMBtPzB7NGDXHwQRFm6N/r
         UeBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780497335; x=1781102135;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XCPjCXvHbhuHFHe3qafNC7OsGOK1OulXbLpmppwSw7g=;
        b=Go2NQ3HMJ092ss2Nh2wwYFy44ZajFMcC7+J/ZIg8j75+LJisHTfLPW0qjGpFI4d3cE
         KiFbgebmR0vQkF69uFtA2ywm+SgsPUlUM0dY6WnZXOdwowaiSpQbDmeJRMQsrNcRhNqN
         Ly0jLHhU4u8mv5zcEiKENHoJAtP8yrSldJIsX4RRT5OIl19HIGnorkEFYRJ3NChiSqNU
         cJFCXyiWwXkfwd1JvCd/kbKuSKSiUI7xtlj4A1ayn/CLdue6/CjSzmRnV2KEU5IaOXZ8
         +hh9AeAPdpNSIbjC+dtrplRYUDuyLQbLMmohd2rRJN17byQ74906UYOZg2wS2yUJPho3
         PFRQ==
X-Gm-Message-State: AOJu0YzFHA/PDNihFsFJRMDxHsmfHvN3AaMPy9hPdBoCqi+WIvT2ivAg
	yzl16QZWjETNqzHWp9vDcQimCTDu7EL1VHA6fN4E9raS52UAi07zJXCC5emC2eGcI9uWIpLdpZJ
	p84SGGIcPmxTdFUeQ8eUL1wTsrn2iPk/eZ2TIqEHFeTm5wCjHQWSlcQ==
X-Gm-Gg: Acq92OGUw4uKpAnbIGi5JSpuTR/Mcnl/C5PBhvFU4Fxe5wo7i80XKYWVte4aB8fNqH9
	K/GcSaEoU/xU/vX63lPbPEZ7JEVzdJHamwcr5O2Gp6vDu9bPkZg9/iKvPSB6bzXiTGhTBBWcqJG
	57CfyATuNVFF2WA9lMfLz2FPv837Cs3hMDR1ZJqY+Jm6S++6RVLlPP+lo1PCg7TweK30F4QlCiM
	+FnO7/TwCP2VYIrvmcWELeGgla0bRkllq0M5NiPGWNts9cIH7yniLaZFFAfToEhCW7OrnPz2GaF
	6C3jf29RMRq60odC+D6KSHqgJWNR2Mo0r4JAucrQ1r/gUzblog==
X-Received: by 2002:a05:690e:128b:b0:660:8e61:1a46 with SMTP id
 956f58d0204a3-660dbea0ce0mr3198310d50.15.1780497333989; Wed, 03 Jun 2026
 07:35:33 -0700 (PDT)
MIME-Version: 1.0
References: <N6GoYGQDRc3L0AErbPJhTZisiKgIiL8TGhCV4cfJAs@lists.ettus.com>
In-Reply-To: <N6GoYGQDRc3L0AErbPJhTZisiKgIiL8TGhCV4cfJAs@lists.ettus.com>
Date: Wed, 3 Jun 2026 10:35:24 -0400
X-Gm-Features: AVHnY4LKPjFMopNJLeDSeSurWXXnXxC7XOXZE6mxNegtBohbnx4DoCAa-qD_2-o
Message-ID: <CAB__hTQg2Nako=QZTQAaxU-7gkDZD9fS6Z08DRUT_17X0zw8sA@mail.gmail.com>
To: niels.steffen.garibaldi@emerson.com
Message-ID-Hash: N4LQIUYCDW46QRYFI7I77RG4DNLUOUM7
X-Message-ID-Hash: N4LQIUYCDW46QRYFI7I77RG4DNLUOUM7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issues configuring DDC/DUC in UHD RFNoC C++
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N4LQIUYCDW46QRYFI7I77RG4DNLUOUM7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7916511887314115823=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:niels.steffen.garibaldi@emerson.com,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:url,ettus.com:email,lists.ettus.com:from_mime,lists.ettus.com:from_smtp,mm2.emwd.com:helo,mm2.emwd.com:rdns,emwd.com:dkim,uhd.readthedocs.io:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 84D0F638AD8

--===============7916511887314115823==
Content-Type: multipart/alternative; boundary="0000000000001e37ac06535a57d0"

--0000000000001e37ac06535a57d0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A couple of comments:
- this case is very similar to the Ettus example rfnoc_radio_loopback
<https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc_radio=
_loopback.cpp>
which
may be helpful to diagnose the problem
- it seems in your calls to graph->connect(), the "is_back_edge" argument
is set to true for all links. I think only one link (arbitrary) should be
true
- if you change your graph so that the Tx uses one radio and the Rx uses
the other radio (rather than the same one in your example), does that
connect OK?  In this case you could set "is_back_edge" false for all links

Rob


On Wed, Jun 3, 2026 at 10:09=E2=80=AFAM niels.steffen.garibaldi--- via USRP=
-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> Sorry, I am not an expert on the UHD Host driver, but since no one else
> has answered I=E2=80=99ll give it a try.
>
> Looking at your Issue I have 2 thoughts.
>
> 1) Is there a specific reason/requirement you are using such an old UHD
> version?
> UHD 4.0 was released 5+ years ago and there have definitely been a lot of
> improvements added since that version.
> The current latest release is UHD 4.10, so the first thing I would
> probably try to do is update the UHD version load the new bitfile to your
> device and then see if this issue still occurs.
>
> 2) So in general you are correct. The UHD host driver has a representatio=
n
> of the RFNoC graph on the host and when you configure one of the blocks, =
in
> your case the DDC/DUC block, then the host driver checks if this setting
> might effect any of the blocks that are connected to the block you are
> configuring.
> For that it checks the graph and goes through all of the graph edges and
> propagates the property (change) to connected blocks. This is called
> property propagation and it is done during the initialisation of the bloc=
k
> during session establishment and depending on the block it can also happe=
n
> every time you configure something of the block.
>
> In your case, changing the sample rate does effect the adjacent blocks. I=
f
> it works in Python but not in C++, that sounds like a race condition to m=
e,
> since a python application is comparably slower to execute than the C++
> application. Also the way that gnuradio establishes the session might be
> slightly different.
>
> Also, it seems like your code between gnuradio and C++ is slightly
> different:
> In Python you are skipping the propagation with `
> self.rfnoc_graph.skip_propagation` but you are not skipping it for the
> C++ graph connection.
> Maybe you can try the other connect API function called
> `connect_through_blocks`
> <https://uhd.readthedocs.io/en/latest/namespaceuhd_1_1rfnoc.html#a8db0ee3=
1f7409f7f4999c12b974f4c10>
> which also has the option to skip propagation and see if that fixes your
> C++ issues.
>
> Have you tried enabling debug/trace logs to get some more information
> about what is actually happening inside of the UHD driver?
> If not, I would recommend doing that to get a better idea when and where
> the issue occurs.
>
> See https://kb.ettus.com/The_UHD_logging_facility for more information.
> Depending on whether you are building your UHD host driver from source or
> getting it via the package, you might only be able to set logging to debu=
g.
>
> Sorry I could not be of more help.
>
> Regards,
> Niels.
> ------------------------------
>
>
> adri96roll@gmail.com wrote:
>
> Hi everyone,
>
> I'm trying to replicate a GNU Radio flowgraph and run it directly in UHD
> 4.0 using C++, but I'm running into an issue that I can't solve.
>
> The Python/GNU Radio version works perfectly, but the equivalent C++
> implementation fails at runtime with the following error:
>
> RuntimeError: AccessError: Attempting to read property
> `samp_rate@INPUT_EDGE:0' before it was initialized!
>
> I already tried configuring the DDC and DUC after the commit, but the
> problem still persists and I don't understand why this property is not
> being initialized correctly.
>
> The RFNoC graph topology is the following:
>
> 0/SEP#0:0=3D=3D>0/DUC#0:0
>
> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
>
> |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
>
> |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
>
> |   |   * 0/SEP#1:0=3D=3D>0/DUC#0:1
>
> |   |   * 0/SEP#4:0=3D=3D>0/Block#0:0
>
> |   |   * 0/Block#0:0=3D=3D>0/SEP#4:0
>
> From what I understand, the issue seems related to the propagation or
> initialization order of the samp_rate property across the graph edges, bu=
t
> I=E2=80=99m not sure which block is responsible or how GNU Radio handles =
this
> internally compared to UHD C++.
>
> Below are the working GNU Radio/Python implementation and the failing UHD
> C++ implementation:
>
> *Python / GNU Radio code (working)*
>
> # Blocks
>
>         ##################################################
>
>         self.ettus_rfnoc_tx_radio_0 =3D
> ettus.rfnoc_tx_radio(self.rfnoc_graph,            uhd.device_addr(''),
>
>             -1,
>
>             -1)
>
>         self.ettus_rfnoc_tx_radio_0.set_rate(samp_rate)
>
>         self.ettus_rfnoc_tx_radio_0.set_antenna('TX/RX', 0)
>
>
> self.ettus_rfnoc_tx_radio_0.set_frequency(uhd.tune_request(center_freq_ou=
t,
> ((samp_rate*0.5) + 2e6)), 0)
>
>         self.ettus_rfnoc_tx_radio_0.set_gain(0, 0)
>
>         self.ettus_rfnoc_tx_radio_0.set_bandwidth(samp_rate, 0)
>
>         self.ettus_rfnoc_rx_radio_0 =3D ettus.rfnoc_rx_radio(
>
>             self.rfnoc_graph,
>
>             uhd.device_addr("spp=3D16"),
>
>             -1,
>
>             -1)
>
>         self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
>
>         self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
>
>         self.ettus_rfnoc_rx_radio_0.set_frequency(center_freq_in, 0)
>
>         self.ettus_rfnoc_rx_radio_0.set_gain(55, 0)
>
>         self.ettus_rfnoc_rx_radio_0.set_agc(False, 0)
>
>         self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)
>
>         self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)
>
>         self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)
>
>         self.ettus_rfnoc_duc_0 =3D ettus.rfnoc_duc(
>
>             self.rfnoc_graph,
>
>             uhd.device_addr(''),
>
>             -1,
>
>             -1)
>
>         self.ettus_rfnoc_duc_0.set_freq(0, 0)
>
>         self.ettus_rfnoc_duc_0.set_input_rate(samp_rate, 0)
>
>         self.ettus_rfnoc_ddc_0 =3D ettus.rfnoc_ddc(
>
>             self.rfnoc_graph,
>
>             uhd.device_addr(''),
>
>             -1,
>
>             -1)
>
>         self.ettus_rfnoc_ddc_0.set_freq(0, 0)
>
>         self.ettus_rfnoc_ddc_0.set_output_rate(samp_rate, 0)
>
>         self.Filter_Passtaps_Filter_Passtaps_0 =3D
> Filter_Passtaps.Filter_Passtaps(
>
>           self.rfnoc_graph,
>
>           uhd.device_addr(''),
>
>           -1,
>
>           -1)
>
>
> self.Filter_Passtaps_Filter_Passtaps_0.set_int_property('user_reg', 0)
>
>
> self.Filter_Passtaps_Filter_Passtaps_0.set_int_property('user1_reg', 66)
>
>
> self.Filter_Passtaps_Filter_Passtaps_0.set_int_property('user2_reg', -2)
>
>
> self.Filter_Passtaps_Filter_Passtaps_0.set_int_property('user3_reg', 0)
>
>
>
>
>
>         ##################################################
>
>         # Connections
>
>         ##################################################
>
>
> self.rfnoc_graph.connect(self.Filter_Passtaps_Filter_Passtaps_0.get_uniqu=
e_id(),
> 0, self.ettus_rfnoc_duc_0.get_unique_id(), 0,
> self.rfnoc_graph.skip_propagation)
>
>         self.rfnoc_graph.connect(self.ettus_rfnoc_ddc_0.get_unique_id(),
> 0, self.Filter_Passtaps_Filter_Passtaps_0.get_unique_id(), 0,
> self.rfnoc_graph.skip_propagation)
>
>         self.rfnoc_graph.connect(self.ettus_rfnoc_duc_0.get_unique_id(),
> 0, self.ettus_rfnoc_tx_radio_0.get_unique_id(), 0,
> self.rfnoc_graph.skip_propagation)
>
>
> self.rfnoc_graph.connect(self.ettus_rfnoc_rx_radio_0.get_unique_id(), 0,
> self.ettus_rfnoc_ddc_0.get_unique_id(), 0,
> self.rfnoc_graph.skip_propagation)
>
> *UHD C++ code (failing)*
>
> uhd::rfnoc::block_id_t rx_radio_id("0/Radio#0");
>
>     uhd::rfnoc::block_id_t tx_radio_id("0/Radio#0");
>
>
>
>     const size_t rx_chan =3D 0; // RX2 normalmente
>
>     const size_t tx_chan =3D 0; // TX/RX normalmente
>
>
>
>     uhd::rfnoc::block_id_t ddc_id("0/DDC#0");
>
>     uhd::rfnoc::block_id_t duc_id("0/DUC#0");
>
>
>
>     uhd::rfnoc::block_id_t filter_id("0/FilterPasstaps#0");
>
>     /********************************************************************=
**
>
>      * GET BLOCK HANDLES
>
>      ********************************************************************=
*/
>
>     auto rx_radio =3D
> graph->get_block<uhd::rfnoc::radio_control>(rx_radio_id);
>
>     auto tx_radio =3D
> graph->get_block<uhd::rfnoc::radio_control>(tx_radio_id);
>
>     auto ddc =3D
> graph->get_block<uhd::rfnoc::ddc_block_control>(ddc_id);
>
>     auto duc =3D
> graph->get_block<uhd::rfnoc::duc_block_control>(duc_id);
>
>     auto filter =3D
> graph->get_block<uhd::rfnoc::FilterPASStaps_block_ctrl>( filt_id );
>
>
> // Configurations Radio RX and TX, DUC and DDC.
>
>
>
>     graph->connect(rx_radio_id, rx_chan, ddc_id, 0, true);
>
>     graph->connect(ddc_id, 0, filter_id, 0, true);
>
>     graph->connect(filter_id, 0, duc_id, 0, true);
>
>     graph->connect(duc_id, 0, tx_radio_id, tx_chan, true);
>
>     std::cout << "Commit graph..." << std::endl;
>
>     graph->commit();
>
> Has anyone encountered something similar or knows the correct
> initialization/configuration order for RFNoC DUC/DDC blocks in UHD 4.0 C+=
+?
>
> Any help would be greatly appreciated.
>
> Thanks in advance!!
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001e37ac06535a57d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>A couple of comments:</div><div>- th=
is case is very similar to the Ettus example <a href=3D"https://github.com/=
EttusResearch/uhd/blob/master/host/examples/rfnoc_radio_loopback.cpp">rfnoc=
_radio_loopback</a>=C2=A0which may be helpful to diagnose the problem</div>=
<div>- it seems in your calls to graph-&gt;connect(), the &quot;is_back_edg=
e&quot; argument is set to true for all links. I think only one link (arbit=
rary) should be true</div><div>- if you change your graph so that the Tx us=
es one radio and the Rx uses the other radio (rather than the same one in y=
our example), does that connect OK?=C2=A0 In this case you could set &quot;=
is_back_edge&quot; false for all links</div><div><br></div><div>Rob</div><d=
iv><br></div></div><br><div class=3D"gmail_quote gmail_quote_container"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 3, 2026 at 10:09=E2=80=AFAM =
niels.steffen.garibaldi--- via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><p>Hi,<br><br>Sorry, I am not an=
 expert on the UHD Host driver, but since no one else has answered I=E2=80=
=99ll give it a try.<br><br>Looking at your Issue I have 2 thoughts.<br><br=
>1) Is there a specific reason/requirement you are using such an old UHD ve=
rsion?<br>UHD 4.0 was released 5+ years ago and there have definitely been =
a lot of improvements added since that version. <br>The current latest rele=
ase is UHD 4.10, so the first thing I would probably try to do is update th=
e UHD version load the new bitfile to your device and then see if this issu=
e still occurs.<br><br>2) So in general you are correct. The UHD host drive=
r has a representation of the RFNoC graph on the host and when you configur=
e one of the blocks, in your case the DDC/DUC block, then the host driver c=
hecks if this setting might effect any of the blocks that are connected to =
the block you are configuring.<br>For that it checks the graph and goes thr=
ough all of the graph edges and propagates the property (change) to connect=
ed blocks. This is called property propagation and it is done during the in=
itialisation of the block during session establishment and depending on the=
 block it can also happen every time you configure something of the block.<=
br><br>In your case, changing the sample rate does effect the adjacent bloc=
ks. If it works in Python but not in C++, that sounds like a race condition=
 to me, since a python application is comparably slower to execute than the=
 C++ application. Also the way that gnuradio establishes the session might =
be slightly different.<br><br>Also, it seems like your code between gnuradi=
o and C++ is slightly different:<br>In Python you are skipping the propagat=
ion  with `<code>self.rfnoc_graph.skip_propagation</code>` but you are not =
skipping it for the C++ graph connection.<br>Maybe you can try the other co=
nnect <a href=3D"https://uhd.readthedocs.io/en/latest/namespaceuhd_1_1rfnoc=
.html#a8db0ee31f7409f7f4999c12b974f4c10" title=3D"" target=3D"_blank">API f=
unction called `connect_through_blocks`</a> which also has the option to sk=
ip propagation and see if that fixes your C++ issues.<br><br>Have you tried=
 enabling debug/trace logs to get some more information about what is actua=
lly happening inside of the UHD driver?<br>If not, I would recommend doing =
that to get a better idea when and where the issue occurs.<br><br>See <a hr=
ef=3D"https://kb.ettus.com/The_UHD_logging_facility" title=3D"" target=3D"_=
blank">https://kb.ettus.com/The_UHD_logging_facility</a> for more informati=
on. Depending on whether you are building your UHD host driver from source =
or getting it via the package, you might only be able to set logging to deb=
ug.<br><br>Sorry I could not be of more help.<br><br>Regards,<br>Niels.</p>=
<div><hr></div><p><br><a href=3D"mailto:adri96roll@gmail.com" target=3D"_bl=
ank">adri96roll@gmail.com</a> wrote:</p><blockquote><p>Hi everyone,</p><p>I=
&#39;m trying to replicate a GNU Radio flowgraph and run it directly in UHD=
 4.0 using C++, but I&#39;m running into an issue that I can&#39;t solve.</=
p><p>The Python/GNU Radio version works perfectly, but the equivalent C++ i=
mplementation fails at runtime with the following error:</p><p>RuntimeError=
: AccessError: Attempting to read property `samp_rate@INPUT_EDGE:0&#39; bef=
ore it was initialized!</p><p>I already tried configuring the DDC and DUC a=
fter the commit, but the problem still persists and I don&#39;t understand =
why this property is not being initialized correctly.</p><p>The RFNoC graph=
 topology is the following:</p><p>0/SEP#0:0=3D=3D&gt;0/DUC#0:0</p><p>|=C2=
=A0=C2=A0 |=C2=A0=C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0</p><p>|=C2=A0=C2=
=A0 |=C2=A0=C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0</p><p>|=C2=A0=C2=A0 |=C2=
=A0=C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0</p><p>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
* 0/SEP#1:0=3D=3D&gt;0/DUC#0:1</p><p>|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/SEP#4:=
0=3D=3D&gt;0/Block#0:0</p><p>|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Block#0:0=3D=
=3D&gt;0/SEP#4:0</p><p>From what I understand, the issue seems related to t=
he propagation or initialization order of the samp_rate property across the=
 graph edges, but I=E2=80=99m not sure which block is responsible or how GN=
U Radio handles this internally compared to UHD C++.</p><p>Below are the wo=
rking GNU Radio/Python implementation and the failing UHD C++ implementatio=
n:</p><p><strong>Python / GNU Radio code (working)</strong></p><p><code># B=
locks</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #######=
###########################################</code></p><p><code>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0 =3D ettus.rfnoc_=
tx_radio(self.rfnoc_graph,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 uhd.device_addr(&#39;&#39;),</code></p><p><code>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,</code></p>=
<p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 -1)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ett=
us_rfnoc_tx_radio_0.set_rate(samp_rate)</code></p><p><code>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0.set_antenna(&#39;TX=
/RX&#39;, 0)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
self.ettus_rfnoc_tx_radio_0.set_frequency(uhd.tune_request(center_freq_out,=
 ((samp_rate*0.5) + 2e6)), 0)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0.set_gain(0, 0)</code></p><p>=
<code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_=
0.set_bandwidth(samp_rate, 0)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0 =3D ettus.rfnoc_rx_radio(</c=
ode></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 self.rfnoc_graph,</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd.device_addr(&quot;spp=3D16&quot=
;),</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 -1,</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)</code=
></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_r=
x_radio_0.set_antenna(&#39;RX2&#39;, 0)</code></p><p><code>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.set_frequency(cente=
r_freq_in, 0)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.ettus_rfnoc_rx_radio_0.set_gain(55, 0)</code></p><p><code>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.set_agc(False=
, 0)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ett=
us_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)</code></p><p><code>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.set_dc_off=
set(True, 0)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)</code></p><p><code>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_duc_0 =3D ettus.rf=
noc_duc(</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph,</code></p><p><code>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd.device_addr(&#39;&#=
39;),</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 -1,</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)</code></p><p><code>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_duc_0.set_freq(0, 0)</code></p><p=
><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_duc_0.se=
t_input_rate(samp_rate, 0)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 self.ettus_rfnoc_ddc_0 =3D ettus.rfnoc_ddc(</code></p><p><c=
ode>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self=
.rfnoc_graph,</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 uhd.device_addr(&#39;&#39;),</code></p><p><code>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,</cod=
e></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 -1)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 se=
lf.ettus_rfnoc_ddc_0.set_freq(0, 0)</code></p><p><code>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_ddc_0.set_output_rate(samp_rate, =
0)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filte=
r_Passtaps_Filter_Passtaps_0 =3D Filter_Passtaps.Filter_Passtaps(</code></p=
><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc=
_graph,</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 uhd.device_addr(&#39;&#39;),</code></p><p><code>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,</code></p><p><code>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)</code></p><p><code>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter_Passtaps_0.set_i=
nt_property(&#39;user_reg&#39;, 0)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter_Passtaps_0.set_int_proper=
ty(&#39;user1_reg&#39;, 66)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter_Passtaps_0.set_int_property(&#3=
9;user2_reg&#39;, -2)</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 self.Filter_Passtaps_Filter_Passtaps_0.set_int_property(&#39;user=
3_reg&#39;, 0)</code></p><p><code>=C2=A0</code></p><p><code>=C2=A0</code></=
p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #####################=
#############################</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 # Connections</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ##################################################</c=
ode></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_grap=
h.connect(self.Filter_Passtaps_Filter_Passtaps_0.get_unique_id(), 0, self.e=
ttus_rfnoc_duc_0.get_unique_id(), 0, self.rfnoc_graph.skip_propagation)</co=
de></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph=
.connect(self.ettus_rfnoc_ddc_0.get_unique_id(), 0, self.Filter_Passtaps_Fi=
lter_Passtaps_0.get_unique_id(), 0, self.rfnoc_graph.skip_propagation)</cod=
e></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph.=
connect(self.ettus_rfnoc_duc_0.get_unique_id(), 0, self.ettus_rfnoc_tx_radi=
o_0.get_unique_id(), 0, self.rfnoc_graph.skip_propagation)</code></p><p><co=
de>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph.connect(self=
.ettus_rfnoc_rx_radio_0.get_unique_id(), 0, self.ettus_rfnoc_ddc_0.get_uniq=
ue_id(), 0, self.rfnoc_graph.skip_propagation)</code></p><p><strong>UHD C++=
 code (failing)</strong></p><p><code>uhd::rfnoc::block_id_t rx_radio_id(&qu=
ot;0/Radio#0&quot;);</code></p><p><code>=C2=A0=C2=A0=C2=A0 uhd::rfnoc::bloc=
k_id_t tx_radio_id(&quot;0/Radio#0&quot;);</code></p><p><code>=C2=A0</code>=
</p><p><code>=C2=A0=C2=A0=C2=A0 const size_t rx_chan =3D 0; // RX2 normalme=
nte</code></p><p><code>=C2=A0=C2=A0=C2=A0 const size_t tx_chan =3D 0; // TX=
/RX normalmente</code></p><p><code>=C2=A0</code></p><p><code>=C2=A0=C2=A0=
=C2=A0 uhd::rfnoc::block_id_t ddc_id(&quot;0/DDC#0&quot;);</code></p><p><co=
de>=C2=A0=C2=A0=C2=A0 uhd::rfnoc::block_id_t duc_id(&quot;0/DUC#0&quot;);</=
code></p><p><code>=C2=A0</code></p><p><code>=C2=A0=C2=A0=C2=A0 uhd::rfnoc::=
block_id_t filter_id(&quot;0/FilterPasstaps#0&quot;);</code></p><p><code>=
=C2=A0=C2=A0=C2=A0 /*******************************************************=
***************</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0 * GET BLOCK HAN=
DLES</code></p><p><code>=C2=A0=C2=A0=C2=A0=C2=A0 **************************=
*******************************************/</code></p><p><code>=C2=A0=C2=
=A0=C2=A0 auto rx_radio =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 graph=
-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(rx_radio_id);</code></p><p>=
<code>=C2=A0=C2=A0=C2=A0 auto tx_radio =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 graph-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(tx_radio_id)=
;</code></p><p><code>=C2=A0=C2=A0=C2=A0 auto ddc =3D=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 graph-&gt;get_block&lt;uhd::rfnoc::ddc_block_control&=
gt;(ddc_id);</code></p><p><code>=C2=A0=C2=A0=C2=A0 auto duc =3D=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 graph-&gt;get_block&lt;uhd::rfnoc::duc_block=
_control&gt;(duc_id);</code></p><p><code>=C2=A0=C2=A0=C2=A0 auto filter =3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 graph-&gt;get_block&lt;uhd::rfno=
c::FilterPASStaps_block_ctrl&gt;( filt_id );</code><br><br><br><code>// Con=
figurations Radio RX and TX, DUC and DDC. </code><br><br><code>=C2=A0=C2=A0=
=C2=A0</code></p><p><code>=C2=A0=C2=A0=C2=A0 graph-&gt;connect(rx_radio_id,=
 rx_chan, ddc_id, 0, true);</code></p><p><code>=C2=A0=C2=A0=C2=A0 graph-&gt=
;connect(ddc_id, 0, filter_id, 0, true);</code></p><p><code>=C2=A0=C2=A0=C2=
=A0 graph-&gt;connect(filter_id, 0, duc_id, 0, true);</code></p><p><code>=
=C2=A0=C2=A0=C2=A0 graph-&gt;connect(duc_id, 0, tx_radio_id, tx_chan, true)=
;</code></p><p><code>=C2=A0=C2=A0=C2=A0 std::cout &lt;&lt; &quot;Commit gra=
ph...&quot; &lt;&lt; std::endl;</code></p><p><code>=C2=A0=C2=A0=C2=A0 graph=
-&gt;commit();</code></p><p>Has anyone encountered something similar or kno=
ws the correct initialization/configuration order for RFNoC DUC/DDC blocks =
in UHD 4.0 C++?</p><p>Any help would be greatly appreciated.<br><br>Thanks =
in advance!!</p></blockquote><p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000001e37ac06535a57d0--

--===============7916511887314115823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7916511887314115823==--
