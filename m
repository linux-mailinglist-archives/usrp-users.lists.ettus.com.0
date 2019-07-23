Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B679171FC2
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 21:00:50 +0200 (CEST)
Received: from [::1] (port=52244 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hq01m-0004zl-7U; Tue, 23 Jul 2019 15:00:46 -0400
Received: from wout5-smtp.messagingengine.com ([64.147.123.21]:53467)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hq01h-0004oc-VC
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 15:00:42 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id AFFB2688;
 Tue, 23 Jul 2019 15:00:00 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Tue, 23 Jul 2019 15:00:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=uo9Lnu
 g/aL78ca9291f9FHarQ23iyDsZ83sYqMkDjTw=; b=P2lvkUHy+nxCElYI14CdIs
 LRJJaa+dDms/5yhdngwTK6xr+tWJhN5nzMhTmcAwFuAVP3wAkSgxSZFZVvlcIpFB
 YC5XQU+vX12oA5cBkQ4+uWU8bcfx/hcwmP4zOwA1Gvzzb7jg2T37Nsfaf2lCNuVk
 O3NfcJdzaJiFbiP2xJsN20MR4F1Stb50eBKizajJfqdBHiuIakHKvBacyHA69+TT
 z5d6oRsGTjmh0IjwDKgsihC73Q498Kr1Py9nLTt0IYSeAKGFcbc+CgEsO/HF9hHQ
 UZjeDFTy7rW51kMGLcqce/AHE8lXjqCiHHUaalSUkwSUGSXp5oVcGIxZo3qmSseQ
 ==
X-ME-Sender: <xms:L1k3Xbor9-njf6fJjQvL4tV9PccGhEMvWTKiPZR4-XQQQGfb5Y9vaQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrjeekgddufedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfoihgt
 hhgrvghlucffihgtkhgvnhhsfdcuoehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuh
 hsrdgtohhmqeenucffohhmrghinhepghhithhhuhgsrdgtohhmnecurfgrrhgrmhepmhgr
 ihhlfhhrohhmpehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuhhsrdgtohhmnecuve
 hluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:MFk3XfE961F41WIM9kk5f3Iu6EWTXXZ5K-uTRlWXCSU-OLhyf-UHyw>
 <xmx:MFk3XZBA3iJ4vnNuC5ECa7oHZu-NUN_94IqMPQHb4qs_dGsYM8oB3A>
 <xmx:MFk3XaMyzkc05I-x5R8x0R4eW5NE2a9ROFNmLRcw5vuqW7JvaRzJBQ>
 <xmx:MFk3XfqGtMjc0xeTWw8sfoLP-bn-as-sxA9WI54rVCV6-LmxAaSxYQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id E2815520093; Tue, 23 Jul 2019 14:59:59 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <e7f629f0-4bad-4b19-86f2-62bd70dd0f55@www.fastmail.com>
In-Reply-To: <CAOtS0CmYe8ZuGWtRhp=uaDcXxVhFEfbN6WY0BpDcgu6HssMxiw@mail.gmail.com>
References: <CAOtS0CmYe8ZuGWtRhp=uaDcXxVhFEfbN6WY0BpDcgu6HssMxiw@mail.gmail.com>
Date: Tue, 23 Jul 2019 14:59:32 -0400
To: "Zhenghao Zhang" <zzhang@cs.fsu.edu>,
 "USRP Users" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Transmitting data from 2 antennas of B210
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi Zhenghao - To the best of my knowledge and memory, all of the examples provided by UHD and GR are just single-channel. My guess is you'll need to create your own custom flowgraph to handle 2 output channels from a single input file. That said, if what you hope to do is the equivalent of "tx_samples_from_file" but just pushing the same file to 2 outputs (or even pushing 2 data streams from the same file, one each to each B210 Tx antenna), that shouldn't be difficult to create: copy the file "https://github.com/EttusResearch/uhd/blob/master/host/examples/tx_samples_from_file.cpp" and use it as a starting point; edit it to do what you want! Good luck! - MLD

On Mon, Jul 22, 2019, at 5:29 PM, Zhenghao Zhang via USRP-users wrote:
> Hi,
> 
> I have a very simple task: transmitting data with two antennas of
> B210. The data is just numbers in a file and I just need to play the
> file.
> 
> I have been able to transmit data by one antenna with the command
> tx_samples_from_file. I did a lot of searching but I was not able to
> find a similar command to use two antennas.
> 
> I am sorry if this question or some variations of it has been answered
> before. Any help is appreciated.
> 
> Thanks,
> Zhenghao

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
