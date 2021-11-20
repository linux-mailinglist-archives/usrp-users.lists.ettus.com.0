Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6845E458079
	for <lists+usrp-users@lfdr.de>; Sat, 20 Nov 2021 22:36:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A62B38421C
	for <lists+usrp-users@lfdr.de>; Sat, 20 Nov 2021 16:36:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CKLBAJhU";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id E5DEC384202
	for <usrp-users@lists.ettus.com>; Sat, 20 Nov 2021 16:35:14 -0500 (EST)
Received: by mail-qk1-f173.google.com with SMTP id d2so13901228qki.12
        for <usrp-users@lists.ettus.com>; Sat, 20 Nov 2021 13:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=VA/nJQAkuNJbrVNIEpj0mBabEvV/Jguqng6NmmyfTCk=;
        b=CKLBAJhU1FbTnZHIlCOfNrKmwEpGoe698dBrjscGQ+bBy2lV4vn0kCvihHN8UOiZNn
         AjlYbUzme3nvhb7VdZyU7zKRhto20tYiARbRly025XURH6kqYf7z5lJqMDujeAVoSM2l
         rxH8xx1uGTMjRtqCzHldBGP5BPgJrmiuORR+WNYRBNiT/HxUzJOD6hIZvS7MWuzGxWYC
         wRAmws4JJuxNYW7UfKGPj4Zva+gQ+bGTLjHq5KCj+VHzO9+4iJ7af3w2aMzO4lvWwMoc
         tAl+5jR5Ez0L6dhRALOguqWr24TjvQpgpWZG82vfnPoEDu/BYm6E8LxAHY5SspuwlHfL
         sRdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VA/nJQAkuNJbrVNIEpj0mBabEvV/Jguqng6NmmyfTCk=;
        b=VDTfEQJka5UonrHnwmwEGUi8uxWUqrVrch91djPMS6W7Pit3y3Tn+mTBurOfoVesG/
         Bw0izvwMGe6WeoqWQ+9X4X40rOp8Hilz3qqDIlIV34S/3ocA19sPg4f+Q1o7rmMIldLZ
         uvIxP+uHEzPvPtC8sZz4Q5wzy2++YcqCMBcgkfNlcSIdytTSXowPqHj4OeblbeENE/wQ
         xkNmxt4i5zyrWVagW8uSKM3eP0dqkvEoZWDPtCpZorKWblRw4E4BnVmXQ0ymdfqFEjAe
         wmGSf2s+3A2s8uKmScOIeqV1Y9FNeqghln797n9cq3tc+X1+yfmIP9E5xfEB++laNorX
         zrHA==
X-Gm-Message-State: AOAM532WU3BN0xkdjTkBLLa2p2zO4wN37i4M6mk5yrsTcCh6u6zdZPEg
	yH9bL2uPYrH1BITOm8g/ZBIQ3IQWrys=
X-Google-Smtp-Source: ABdhPJzIr46WAKtzHZYu0sQMPvS/E+bztqH5lEMqfeDOl9X4qtGzFkXFe1EGRGu27P3dZp6JNQkUmQ==
X-Received: by 2002:a37:27cc:: with SMTP id n195mr36677689qkn.507.1637444114079;
        Sat, 20 Nov 2021 13:35:14 -0800 (PST)
Received: from [192.168.2.229] (bras-base-smflon1825w-grc-06-174-88-54-236.dsl.bell.ca. [174.88.54.236])
        by smtp.googlemail.com with ESMTPSA id x125sm1898487qkd.8.2021.11.20.13.35.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Nov 2021 13:35:13 -0800 (PST)
Message-ID: <c6493561-fc7a-fc9a-a1fc-076d4f9466c7@gmail.com>
Date: Sat, 20 Nov 2021 16:35:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1703-61992f00-ab-c73f000@261189462>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1703-61992f00-ab-c73f000@261189462>
Message-ID-Hash: D55IYLSG6NOFXUXXKCWEVZCRWT53RQQ7
X-Message-ID-Hash: D55IYLSG6NOFXUXXKCWEVZCRWT53RQQ7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: possibly misplaced .bit files in 003.009.007-release UHD repository
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D55IYLSG6NOFXUXXKCWEVZCRWT53RQQ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2021-11-20 12:24, Le Coq Yann wrote:
> Hello,
>
> I use an X310 for an application in which the daughterboards are 2 Basic RX and 2 BasicTX. The subdevspec I use (in a Gnuradio Flowgraph) is "A:A B:A", both for emission and reception.
> Last time someone from my lab checked (a year ago or so), UHD 003.009.007-release was apparently the latest UHD version that was OK with such subdevspec, and I therefore believe that I am effectively stuck to this old version.
>
> I was working so far with a usrp_x310_fpga_HGS.bit FPGA image on the X310, with single 10Gb/s ethernet interface. However, I want now to improve performance by going to dual 10Gb/s interface.
>
> Unfortunately, using "uhd_images_downloader"  (which seems to work fine and tells me it extracts .bit files from the correct 003.009.007-release version) followed by "uhd_image_loader --args="type=x300,addr=192.168.40.2" --fpga-path="/usr/local/share/uhd/images/usrp_x310_fpga_XG.bit" seems to upload an FPGA image that is not compatible with the UHD version (benchmark_rate, for example, gives a "Error: RuntimeError: Expected FPGA compatibility number 19, but got 33"). For reference, uploading usrp_x310_HG.bit produces a similar compatibility number error, but usrp_x310_HGS.bit does, on the contrary, upload an image that UHD is happy with.
>
>
> It seems to me that the files in the repository at "https://files.ettus.com/binaries/images/" may be misplaced for the 003.009.007-release version. I actually tried manually dowloading the "https://files.ettus.com/binaries/images/uhd-images_003.009.007-release.tar.gz" file and extracting the .bit files from that, but got the same results as when I use the .bit downloaded by uhd_image_loader.
>
> Can someone let me know if I am missing something here ? My only alternative, as I see it, would be to build the FPGA image myself with the fpga-src submodule of the UHD version I use, but that would first require me to get a Vivado license...
>
> Help would be greatly appreciated.
>
> -Yann
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Yann:

I've let Ettus/NI R&D know that there's a potential "housekeeping" 
problem with the FPGA image repository.

I dont' have copies of those images myself, but there's likely someone 
on this list who *does* have copies of images for that particular 
version of UHD.

This may be faster than waiting on R&D, since it's the week-end.

So, anyone?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
