Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DB2C2FB4
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2019 11:11:31 +0200 (CEST)
Received: from [::1] (port=49492 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFEBo-0001eL-9m; Tue, 01 Oct 2019 05:11:24 -0400
Received: from www.itsystems.it ([62.94.30.103]:36684 helo=mx1.itsystems.it)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <p.palana@itsystems.it>)
 id 1iFEBk-0001Yq-HR
 for usrp-users@lists.ettus.com; Tue, 01 Oct 2019 05:11:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=itsystems.it; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=04dSGtJan8kW7frTP3sCGsCTfdhH860RrHCT9PfeaoI=; b=OL0ko//ekN7X81KNsDaHdFJCeG
 VKz58bkhT567a/WyV3HFfl3116DRhIl2N3lvDp75Lpqx2nGt70wuvJg7QYK99mE8/8zpBodaTMD/S
 EOGi77vV00arthCNFSG3wTpKKxNpD+fVSpPZg96yPWmqjiRjSMb2ASdydnQPxy2tgrbU=;
Received: from [10.10.0.138]
 by mx1.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.90_1) (envelope-from <p.palana@itsystems.it>)
 id 1iFE97-0005k6-NF
 for usrp-users@lists.ettus.com; Tue, 01 Oct 2019 09:08:41 +0000
To: usrp-users@lists.ettus.com
References: <b9a5e62a-1eed-95cd-9061-8ab7828ead6f@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=p.palana@itsystems.it; prefer-encrypt=mutual; keydata=
 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
 Hv257PEMJkU=
Message-ID: <6d39763f-ea6e-9dcf-a38e-d0afeafe9c56@itsystems.it>
Date: Tue, 1 Oct 2019 11:10:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b9a5e62a-1eed-95cd-9061-8ab7828ead6f@gmail.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "v-mx.virt.itsystems.it", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I had the same problem indeed, I think this is because vivado
 2017.4 output image size is a bit different from the output imase size of
 vivado 2015.4. I say so because the error did not appear with uh [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
Subject: Re: [USRP-users] X310 image 8 bytes too large with default image
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
From: Paolo Palana via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Paolo Palana <p.palana@itsystems.it>
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

I had the same problem indeed,
I think this is because vivado 2017.4 output image size is a bit
different from the output imase size of vivado 2015.4.
I say so because the error did not appear with uhd-3.10.3. I think the
problem is that no one updated the tools provided with libuhd
used to configure the fpga in order to handle the new output file dimension.

My solution is very simple, if you are under Linux just use dd and copy
the original file with a command like this:

dd if=<orig_file>.bit of=<new_file>.bit bs=<the_rigth_dimension> count=1

And it works, at least for me. In fact if you open the bit file with a
hexeditor you can see how the last bites looks like a padding.

Best,
Paolo


On 30/09/19 23:06, Francesco Restuccia via USRP-users wrote:
> Hi guys,
>
> I am responding to the following thread:
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-August/057669.html
>
> I am having the same problem while running the uhd_image_builder.py
> with the default images for X310.
>
> See below:
>
> frank@frank-iMac:/opt/uhd/host/build/examples$
> "/opt/uhd_gnuradio_installs/bin/uhd_image_loader"
> --args="type=x300,addr=192.168.10.15"
> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
> UHD_3.15.0.git-71-g18bc320d
> Error: RuntimeError: The specified FPGA image is too large: 15878040
> vs. 15878032
>
> Any idea? I guess that this should NOT happen with default images
> downloaded through uhd_images_downloader.
>
> Note that the USRP works by burning the default bitfile (HG version)
> directly via Vivado and JTAG.
>
> Best,
>
> Francesco
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
