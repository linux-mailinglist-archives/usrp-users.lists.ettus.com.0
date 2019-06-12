Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD2D41AE8
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2019 06:07:13 +0200 (CEST)
Received: from [::1] (port=44344 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hauXR-00035B-KH; Wed, 12 Jun 2019 00:07:05 -0400
Received: from sonic301-23.consmr.mail.gq1.yahoo.com ([98.137.64.149]:45290)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hauXO-0002yo-1C
 for usrp-users@lists.ettus.com; Wed, 12 Jun 2019 00:07:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1560312380; bh=BIRCRj5hIDKrbcp61PHRMSBTyUdihHPtp2fQ/0jQLcA=;
 h=Subject:From:To:Date:In-Reply-To:References:From:Subject;
 b=U1qLD+UpgspsYDHyXykElqF1VTpNUNf4lyQTrfQz2Megut/5evpdgnBtlkkv/lxlkLSfDiv2+jZAyf91/ockLLGTXrNYk+afJ6KzqcjalivtU8CRvvU1/go3lFhJejFuIQM3Ej2L6eAzfIs9F9lO/kNK5+cw03UYQ6YqM5ljYkGzZ2jgvAxixBAQl/PJ28DrNDQpvyo7nsfdYBEbmQN3ikMgonbExIIj8ABk0CbsKEjNnP7RByvrsnnnAwxkhNtwBRnpuhbjVYLIfHrHh7ALwUwCtyb+pn1XfLt0w3TgGEZc2PNTRF43EGq2+FhSe8McqDAwlS5iJ0NuU32TGoOnkw==
X-YMail-OSG: 3ingOugVM1kQ875sbFWcEQ2hETOAM7_LN3U9q3cg1STZ6MyiMW1Qagjj1NqcuR3
 9W_uDlhfravmAKySNzSP5IOmWPHY283R.SrnVvnVq_uwB7.34WzcOFbP7oOTSkpnwZ7U9Gwzx6Qj
 jF.5ieL8gPb8xQJunmOMgPxbU.1F9tgcEdN5tONh2l6ODrKbBKKAnPCNtIdic6JawIXBcgy0L0x5
 qFNwf2t_rBFQe_By3zc8tGk79lHV70sTcPZptQscXIDVVBCx1e0iBfn_NHeK_yVTeJHcYZ9w1k1i
 SXHkoveWxwKw42zhwigDOyGfdcM6mzwBHTjXMMjpW3XpdQL3ozMoZliC53F3jhKsPeO1iH.He6K8
 U.20e7nG78vw5vmm8omrEzo3ADbDMGfbR_FAbe21Qy8w_HEN_rzmxjSNzTYtuZyRwd1PfkahExKT
 F838b8i1BVIWYTZXSN88YI_nJo6CZFBUbzHErj7uCZ6LpRsNJQj8h0GDt4iUYWjiVI_yhNOO9Jor
 nQBleaCkMoJOC5aXRNidgec2afCRxCNJ6GrO3q0VkGV9kjw5TGe.jhx_4gVujWPeY2oTZ0.DisWi
 _CE4ZM6CDo7nu0z1twL3AgLzWgfLkvU8IdX5Lv6Vu2gG4zSO67UVGsjmz6bowgMyi0zIcZxYzQj7
 f46ltaXO38vaVnESFquF3k.THESFeEgCRwcVxgJG7P8_RHMjT6mQUNs3nSVBgNihQlQagstDNyzc
 faiIaVtmmNKk0Zv6.o2pmCZKXEoYeiRCYD7nKY8xGHd7bcDSJzCEmtZrbZX1E8UJ1ORG7geyX2kl
 CT90EN4L1jZwyRkSz_wwfEXfViWHGe6Uies66kQafT6LwoiovFjtIcitwUCvGJQjaeFIwivVINcx
 UoQ8o.8dbQ4emoEKZMXZJwquvGZ23_GLWDc7ufoat7PFD1_ykPEZQu8SrCFO4UoBNcWxPvKNXLAl
 VGX6YRdXzrqef40cT9aDs05DFWulfhR_a5JJTrVOQLlrtdgSCqTB4Jun9MVDsvJq6DFxEkK9qt6R
 FXcwqKMulDmEJqNCchP8Hqi7.Dv4xBgeEslWwqS98TuPPfLweETvZkmWHb4VggexchuPfnbz2x3L
 EylXYw7GaqEWUWssmzunTLDPJISadIWwFnszhJeXcXqbXeyBRk1nbZKNF04PRMFXXBgd5EEuS_kF
 1qf3ECqJMsu5AKe2uVGaQpc6Y1QZmu94UfgJfGsJ9ZsZgPYu1S.OpKTp1HWC0jl1v
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.gq1.yahoo.com with HTTP; Wed, 12 Jun 2019 04:06:20 +0000
Received: from 108-202-218-101.lightspeed.rcsntx.sbcglobal.net (EHLO
 Serenity2) ([108.202.218.101])
 by smtp411.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 79d4cb80b78f4b9988963d3608580d6b for <usrp-users@lists.ettus.com>;
 Wed, 12 Jun 2019 04:06:15 +0000 (UTC)
Message-ID: <72eead59a4f75467aa77ee233331ae1b770cd6a5.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Wed, 12 Jun 2019 04:06:13 +0000
In-Reply-To: <2d2b8c3c89cc726250ce85d83724f6f69c5652eb.camel@sbcglobal.net>
References: <2d2b8c3c89cc726250ce85d83724f6f69c5652eb.camel@sbcglobal.net>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] RFNoC on E310 -- which uhd version has pre-build
 FPGA modules?
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
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

update: as far as I can tell uhd_images_downloader no longer tells the
user where on Ettus's server it looks for the files and even with an
internet connection it doesn't grab the RFNoC images. However, I was
able to look inside the uhd_images_downloader.py file itself and piece
together the new image path (
http://files.ettus.com/binaries/cache/e3xx/)
and build-specific image file name. There I found the correct RFNoC
images, moved them the E310, and uhd_usrp_probe will now list the RFNoC
capabilities just before it gives the string of errors and closes.
rfnoc_rx_to_file and rx_samples_to_file work. 

I haven't yet been able to get the old version of gnuradio running on
the pc side to generate the python script to test the window or fft
functions on the pre-compiled images.


A stock fpga image (not RFNoC) build with Vivado Webpack from the
instructions in fpga-src seemed produce a working image. The image made
following the instructions in "Getting Started with RFNoC Development"
using 

./uhd_image_builder.py window fft -d e310 -t E310_RFNOC -m 5 --fill-
with-fifos (my radio too old for sg3)

did not work. It gives the error:
root@ettus-e3xx-sg1:~/newinstall/usr/share/uhd/images# uhd_usrp_probe
--args='fpga=usrp_e310_fpga_RFNOC.bit'
[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
UHD_4.0.0.rfnoc-devel-702-geec24d7b
[INFO] [E300] Loading FPGA image: usrp_e310_fpga_RFNOC.bit...
[INFO] [E300] FPGA image loaded
[INFO] [E300] Initializing core control (global registers)...

[INFO] [E300] Performing register loopback test... 
[INFO] [E300] Register loopback test passed
[INFO] [0/Radio_0] Initializing block control (NOC ID:
0x12AD100000000000)
[INFO] [0/Window_0] Initializing block control (NOC ID:
0xD053000000000000)
[WARNING] [RFNOC] Can't find a block controller for key FFT, using
default block controller!
[INFO] [0/FFT_0] Initializing block control (NOC ID:
0xFF70000000000000)
[WARNING] [RFNOC] Can't find a block controller for key FIFO, using
default block controller!
[INFO] [0/FIFO_0] Initializing block control (NOC ID:
0xF1F0000000000000)
[WARNING] [RFNOC] Can't find a block controller for key FIFO, using
default block controller!
[INFO] [0/FIFO_1] Initializing block control (NOC ID:
0xF1F0000000000000)
[WARNING] [RFNOC] Can't find a block controller for key FIFO, using
default block controller!
[INFO] [0/FIFO_2] Initializing block control (NOC ID:
0xF1F0000000000000)
[ERROR] [AD936X] CODEC loopback test failed! Expected: 0x0F70E550
Received (TX/RX): 0x0F70E550/0x00000000
Error: RuntimeError: CODEC loopback test failed.

still, progress



On Tue, 2019-06-11 at 14:45 +0000, d.des wrote:
> I'm still trying to re-create the situation which existed back when
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>  
> was written but am not having any luck. Following those insructions I
> can't get access to any pre-build modules other than radio, ddc, and
> duc. I'm looking for the: 
> 
> >   |   |   * Radio_0
> >   |   |   * FIFO_0
> >   |   |   * Window_0
> >   |   |   * FFT_0
> >   |   |   * fosphor_0
> >   |   |   * FIFO_1
> >   |   |   * FIR_0
> 
> modules shown in the tutorial.
> 
> My latest attempt was to git and cross-compile UHD_4.0.0.4.0.0.rfnoc-
> devel-238-g39a41476-702-geec24d7b
> since it seems to match the latest RFNoC-labeled images at
> files.ettus.com that look the most like:
> 
> http://files.ettus.com/binaries/images/uhd-images_4.0.0.rfnoc-devel-xxx-xxxxxxxxx.zip
> 
> but I get:
> 
> ERROR] [0/Radio_0] Major compat number mismatch for noc_shell:
> Expecting 2, got 195936478
> 
> It HAS TO BE POSSIBLE to back to the situation that existed when that
> document was written. Can someone point to the right combination that
> existed back then? Should I keep randomly walk back versions until it
> works, or is there some other modernization (maybe the sd card image)
> that is breaking pre-build RFNoC images? I want to try to make my own
> but want something that works to start from.
> 
> tnx


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
