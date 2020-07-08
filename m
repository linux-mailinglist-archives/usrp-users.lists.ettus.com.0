Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32052219443
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jul 2020 01:26:25 +0200 (CEST)
Received: from [::1] (port=47324 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jtJSG-0002Ak-HZ; Wed, 08 Jul 2020 19:26:20 -0400
Received: from mail-lj1-f175.google.com ([209.85.208.175]:38522)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wandrewp@gmail.com>) id 1jtJSC-00026r-Fi
 for usrp-users@lists.ettus.com; Wed, 08 Jul 2020 19:26:16 -0400
Received: by mail-lj1-f175.google.com with SMTP id 9so230063ljv.5
 for <usrp-users@lists.ettus.com>; Wed, 08 Jul 2020 16:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=4Ep7urODnowwdYiQ+U8U2PSAi8Gf/0RzptYuxV+tYPE=;
 b=NcaRYJaq6zrK9g1dk+3oAm63JBG2ozdIeGiJE/yGfPgBIfTOi+ZmtUZPjCZJJzaU0M
 hlhjW0U9LjSSFUMcWEYM7wpCN/ebdprosFA2gEyBrli9YT6TZoMM86e8JM2sBqiG+i9H
 6FTIruLsrfDfYzLrVIRY/A/eAdFBr361nLDUcuF2HZ4r5OZhf3RHoiADu6pKGGtwF8e5
 BWthBlanyK6XUsqEtJX4z0NAthKOY3lfwOqGP4cvLrd6aX3ebekpyaeLIMsJuPP8ElWt
 MD6kIz8O5iPP/ghoUIKm74YwpkZXkcxDhKHo7MywHQ0HJoSDK8tSpxJifXYoy549bFWS
 pxAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=4Ep7urODnowwdYiQ+U8U2PSAi8Gf/0RzptYuxV+tYPE=;
 b=bgEP71Izsuey6NhttgiUAJUYZ5pQEFG/1r4tXv0w7f34Z51xyPdVxY1kS/HYbMBC4U
 Nr7Lkn1WuhcrlEX8ztfv4UOCmm3c/8qmshRHctLzL27gCnVb+DOyRBA08Dd8MWL7B9IP
 nViK6MGvpd/mbnOfyREsQ53ZrBrIite06NanLaiP7/xU+OePp2cHXDPQBfP4Ie74Xmkp
 rz/vgxYBLryi+xHeCAxtIblRRJHVzBarUBn2QUVAkipkZ+y048McO2qPYvxMktQczWTg
 G9j/MiY3IbdPQGyGhmh+Rr5KDBqL330iXH1fXgH9d3tRKKRlz/9M+OxHq6OxCyFrDDJE
 0bdg==
X-Gm-Message-State: AOAM531LDWdPYrjdLTJiWF9BDaIVoZb69fAqY0kKj0zBvVlGM4+q9pbw
 +LAoUBvdYKo6vODKBnTybhg9XmzukYi2r4RPx6GXXFINoYY=
X-Google-Smtp-Source: ABdhPJwCVvOR91FDLcM7zkvtnn+D4o5uWidVRK17r9HNgUgXJ2v/DVhph1GnT8MvJoEngLt+k6lvQGfHf7aYOQSrc9g=
X-Received: by 2002:a2e:99c6:: with SMTP id l6mr29954757ljj.220.1594250734713; 
 Wed, 08 Jul 2020 16:25:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAB50+dT4S9Q-uWfgP5-dar1A4=+DmzdjpwHuWpXH29Hq5cQSKQ@mail.gmail.com>
In-Reply-To: <CAB50+dT4S9Q-uWfgP5-dar1A4=+DmzdjpwHuWpXH29Hq5cQSKQ@mail.gmail.com>
Date: Wed, 8 Jul 2020 19:25:23 -0400
Message-ID: <CAB50+dTUoA=ZzJGhh-bH9=MC=cNUazxvc9Spy-AM8gzun3++7g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] e310, RFNOC, GNURadio Full Duplex,
 Custom RFNOC Block
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
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

Actually I have found a clue! In
usrp3/lib/rfnoc/noc_block_keep_one_in_n.v, axi_wrapper simple_mode is
set to off, instead opting to use cvita_hdr_modify.  I opted to use
keep_one_in_n.v in my custom noc_block, BUT, I have set simple mode to
1.  And if I go into usrp3/lib/rfnoc/axi_wrapper.v, at the top the
comments for SIMPLE_MODE say "Automatically handle header
(s_axis_data_tuser), packets must be consumed / produced 1-to-1".
What does this mean?  That the CEs installed at the crossbar are all
beholden to the rate of this CE?  Because remember with my issue, my
custom RFNOC block (which incorporates keep_one_in_n.v with simple
mode enabled) works well, the TX with DUC alone works well, but TX
with DUC and FIFO plus my custom RFNOC block seems to greatly
attenuate TX.  Could the TX stream be slowed down by my custom RFNOC
CE?

On Wed, Jul 8, 2020 at 4:37 PM Andrew Payne <wandrewp@gmail.com> wrote:
>
> I have an issue with my setup I'm hoping to solve.
>
> I have an e310 running the UHD 3.15 LTS image.
>
> I have created one custom RFNOC block, which has 2 RX streams, and it
> is composed of the following chain: complex to magnitude ---> moving
> sum ---> keep one in n (n=2048) ---> FIFO with input parameter SIZE=5,
> so then I don't need the RFNOC FIFO block to save space when
> generating the FPGA image file.  The moving sum block generates a sum
> from a power of 2 samples, then I feed the keep one in n block with a
> resulting sum whose LSBs are truncated, effectively dividing by a
> power of 2 to effectively generate a moving average. I am using the
> AXI Wrapper with Simple Mode, noc shell, etc, all generated from the
> rfnoc mod tool.
>
> It works great, but I also have a TX output signal, just a sine wave,
> in my gnuradio flowgraph.  Its output, depending on the RF center
> frequency, is greatly attenuated (the greatest I can get it is like
> -39dBm, but it falls off to -55).  But if I just have the TX output
> alone without my RX RFNOC block, I can get the output over 0dBm or
> more, haven't tried going higher than that.
>
> My question is, how can I get the TX signal higher with my full duplex
> RFNOC setup?  Could anything about the RX chain be affecting my TX
> samples, like could it be somehow deleting samples?  Do I need to tag
> the streams in GNURadio so they don't interfere or something?
>
> Thanks,
> Andrew

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
