Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2303A3E465A
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 15:18:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4755E3840FF
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 09:18:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A19uWBK5";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 9BFC9383B8F
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 09:17:36 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id e14so18260123qkg.3
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 06:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=ejbrLiHp60Royg2wZ0y8JEEVkzcqSNpFDAwynagl0PM=;
        b=A19uWBK5P+wym8DN3Y/IVuwxhwSangNv/w8ZGwhmBrorM7eFTQP3y9DNjUYkjzuell
         iQbwzIjmJiSHBJFEnQ6VNmd+CWgjCmD2/w0Af0vwqmhkBFu7H+vF/qu2CVjCrNGAtaIv
         RZlU0Rb4r5lixkZ0iRQ+Gr5bE7d3wiQd+fgxZoLUnE2HC8W2ls1RYJTLUtuUhxRGYXWW
         xI+rtjx2N/e035l014MmF37WIBmUOAZUlF0D2mJH83sB50lTZN13o3r9qjOJX/P8WhDH
         d6fTFBjFSKRyNQR9YVzMPJejUNIsgG1JmEgnUAfnWMGkEdNIEZ+hFSC+suH2lN2cgMK6
         ND2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=ejbrLiHp60Royg2wZ0y8JEEVkzcqSNpFDAwynagl0PM=;
        b=kcScGCN0bCHTTNjllu05N/5vgT6FJo8NmxNczi+SvLI8sM9GdVwSiJVGAy3+lhjyq5
         SJdeJ9YZw/T4oo6Mvk+gw/IX86yr/lb1TIMJLpwBEr6GFIOubvbPJjWW4oDKY7siwXkH
         A2XpkuvbkwjvgMk8T+kWv7LKAZVQUytsA3vli/uKVFM8QsdVHTeSBAVFMAyvMHf/LUbF
         p6Duot7ObAOcm4r6w1Ifvgqs696HbJC1pkPmxwBY9MCsv5kkTWwmHuWTLC9oBSeF7/em
         Y1NLlr+z68u7gV7+PjDnct1BFZQcU6WwSAYg33DgD2a3hfSH6nGsC58/8gj2tcwDJzJQ
         8VMQ==
X-Gm-Message-State: AOAM532GhqNwOJZk8ChsXfq9IS+Nk7CCv2Z3wU0eozCDgG5bRdxIkq74
	8RZ4Edf2BJJjDKeoXUtsj6oHddqN8Mhdzg==
X-Google-Smtp-Source: ABdhPJy9ITT6u0lTpiD22RQSoRpeJnXADt4dzw4Q1bp2BWmOGoiioYE/EfAWy75UJFaK4hNELVDBJw==
X-Received: by 2002:a05:620a:2a0f:: with SMTP id o15mr23371339qkp.404.1628515055860;
        Mon, 09 Aug 2021 06:17:35 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id k8sm508070qtp.14.2021.08.09.06.17.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 06:17:35 -0700 (PDT)
Message-ID: <61112AE8.4050100@gmail.com>
Date: Mon, 09 Aug 2021 09:17:28 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1343769836.268037.1628477116595.ref@mail.yahoo.com> <1343769836.268037.1628477116595@mail.yahoo.com>
In-Reply-To: <1343769836.268037.1628477116595@mail.yahoo.com>
Message-ID-Hash: 4QWLCFTDO4QOJZLDJR2SCECSXBZSABG2
X-Message-ID-Hash: 4QWLCFTDO4QOJZLDJR2SCECSXBZSABG2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "Failure to create rfnoc_graph" error when updating FGPA on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4QWLCFTDO4QOJZLDJR2SCECSXBZSABG2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0566117763246649000=="

This is a multi-part message in MIME format.
--===============0566117763246649000==
Content-Type: multipart/alternative;
 boundary="------------000505090605060907050207"

This is a multi-part message in MIME format.
--------------000505090605060907050207
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/08/2021 10:45 PM, Tellrell White via USRP-users wrote:
> Hello
> I'm currently trying to update the default fpga image on a usrp n310 
> and I'm getting an error. This a print out
>
>
> tw@tw-virtual-machine:/usr/local/share/uhd/images$ uhd_image_loader 
> --args "type=n3xx,addr=172.37.104.131" --fpga-path=usrp_n310_fpga_HG.bit
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_4.1.0.heads-v4.0.0.0-13-g240c7fdd
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=172.37.104.131,type=n3xx,product=n310,serial=316CD05,fpga=HG,claimed=False,skip_init=1
> [INFO] [MPMD] Claimed device without full initialization.
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
> [INFO] [MPM.PeriphManager] Installing component `fpga'
> [INFO] [MPM.PeriphManager] Installing component `dts'
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
> [INFO] [MPM.PeriphManager] Device serial number: 316CD05
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> [INFO] [MPM.PeriphManager] init() called with device args 
> `clock_source=internal,time_source=internal'.
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
> [WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface to forward 
> CHDR packets to from eth0.
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=172.37.104.131,type=n3xx,product=n310,serial=316CD05,fpga=HG,claimed=False,addr=172.37.104.131,find_all=1
> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
> Target sock buff size: 2500000 bytes.
> Actual sock buff size: 212992 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.rmem_max=2500000
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2500000 bytes.
> Actual sock buff size: 212992 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=2500000
> [WARNING] [UDP] The current recv_buff_size of 212992 is less than the 
> minimum recommended size of 816000 and may result in dropped packets 
> on some NICs
> [WARNING] [UDP] The current send_buff_size of 212992 is less than the 
> minimum recommended size of 307200 and may result in dropped packets 
> on some NICs
> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. 
> EnvironmentError: IOError: recv error on socket: Connection refused
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: 
> EnvironmentError: IOError: recv error on socket: Connection refused
> [INFO] [MPM.PeriphManager] init() called with device args 
> `find_all=1,fpga=HG,mgmt_addr=172.37.104.131,product=n310,clock_source=internal,time_source=internal'.
> [WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface to forward 
> CHDR packets to from eth0.
> Error: RuntimeError: Failure to create rfnoc_graph.
>
>
You have you used a USRP device successfully on your host PC before?  I 
wonder if your firewall is blocking packets to/from UDP 49152?



--------------000505090605060907050207
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/08/2021 10:45 PM, Tellrell White
      via USRP-users wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:1343769836.268037.1628477116595@mail.yahoo.com"
      type=3D"cite">
      <div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue=
,
        Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hello <br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>I'm currently trying to update the default fpga image on
            a usrp n310 and I'm getting an error. This a print out <br>
          </div>
          <div><br>
            <br>
            tw@tw-virtual-machine:/usr/local/share/uhd/images$
            uhd_image_loader --args "type=3Dn3xx,addr=3D172.37.104.131"
            --fpga-path=3Dusrp_n310_fpga_HG.bit<br>
            [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
            UHD_4.1.0.heads-v4.0.0.0-13-g240c7fdd<br>
            [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=3D172.37.104.131,type=3Dn3xx,product=3Dn310,serial=3D316CD05,fp=
ga=3DHG,claimed=3DFalse,skip_init=3D1<br>
            [INFO] [MPMD] Claimed device without full initialization.<br>
            [INFO] [MPMD IMAGE LOADER] Starting update. This may take a
            while.<br>
            [INFO] [MPM.PeriphManager] Installing component `fpga'<br>
            [INFO] [MPM.PeriphManager] Installing component `dts'<br>
            [INFO] [MPM.RPCServer] Resetting peripheral manager.<br>
            [INFO] [MPM.PeriphManager] Device serial number: 316CD05<br>
            [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br=
>
            [INFO] [MPM.PeriphManager] init() called with device args
            `clock_source=3Dinternal,time_source=3Dinternal'.<br>
            [INFO] [MPMD IMAGE LOADER] Update component function
            succeeded.<br>
            [WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface
            to forward CHDR packets to from eth0.<br>
            [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=3D172.37.104.131,type=3Dn3xx,product=3Dn310,serial=3D316CD05,fp=
ga=3DHG,claimed=3DFalse,addr=3D172.37.104.131,find_all=3D1<br>
            [WARNING] [UDP] The recv buffer could not be resized
            sufficiently.<br>
            Target sock buff size: 2500000 bytes.<br>
            Actual sock buff size: 212992 bytes.<br>
            See the transport application notes on buffer resizing.<br>
            Please run: sudo sysctl -w net.core.rmem_max=3D2500000<br>
            [WARNING] [UDP] The send buffer could not be resized
            sufficiently.<br>
            Target sock buff size: 2500000 bytes.<br>
            Actual sock buff size: 212992 bytes.<br>
            See the transport application notes on buffer resizing.<br>
            Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>
            [WARNING] [UDP] The current recv_buff_size of 212992 is less
            than the minimum recommended size of 816000 and may result
            in dropped packets on some NICs<br>
            [WARNING] [UDP] The current send_buff_size of 212992 is less
            than the minimum recommended size of 307200 and may result
            in dropped packets on some NICs<br>
            [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
            EnvironmentError: IOError: recv error on socket: Connection
            refused<br>
            [ERROR] [RFNOC::GRAPH] Caught exception while initializing
            graph: EnvironmentError: IOError: recv error on socket:
            Connection refused<br>
            [INFO] [MPM.PeriphManager] init() called with device args
`find_all=3D1,fpga=3DHG,mgmt_addr=3D172.37.104.131,product=3Dn310,clock_s=
ource=3Dinternal,time_source=3Dinternal'.<br>
            [WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface
            to forward CHDR packets to from eth0.<br>
            Error: RuntimeError: Failure to create rfnoc_graph.<br>
            <br>
          </div>
        </div>
        <br>
      </div>
    </blockquote>
    You have you used a USRP device successfully on your host PC
    before?=A0 I wonder if your firewall is blocking packets to/from UDP
    49152?<br>
    <br>
    <br>
  </body>
</html>

--------------000505090605060907050207--

--===============0566117763246649000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0566117763246649000==--
