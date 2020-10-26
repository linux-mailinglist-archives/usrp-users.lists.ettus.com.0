Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66655299360
	for <lists+usrp-users@lfdr.de>; Mon, 26 Oct 2020 18:08:22 +0100 (CET)
Received: from [::1] (port=41644 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kX5ym-0008Ei-4b; Mon, 26 Oct 2020 13:08:20 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:42903)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1kX5yi-00084G-Ln
 for usrp-users@lists.ettus.com; Mon, 26 Oct 2020 13:08:16 -0400
Received: by mail-ed1-f66.google.com with SMTP id v19so10187144edx.9
 for <usrp-users@lists.ettus.com>; Mon, 26 Oct 2020 10:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=IUVURclu4J5SqNxjPdjQP9bMIrQuMDA89LCMPcceyWQ=;
 b=MGAmVuhLJAQ3kueWX5S6AglgTRt1CB1P09ASYTtqIehviV50XDv2QQzJjidG7e1C3k
 YYM4ME7VvollSP2N++luwPJc+F8g/67/+0DqkaNi4PhI7obitQI/bV8nItiMjEdA5Znv
 RBVxQbyxxn8X3EK3foN+rpyw7pPdtx2BlAesiCS3NjX1yG0HrP5f1TkSkNJHznPDle/0
 QOlNRTp61iQkwttwCQuAZByfWXxIPzLckO8V2ulHys/hbfSE2ekOrAbZVrqEaly2OJ/P
 h2ZryzoeqaE7HT+lvlRWTdIkYUFZsDa7AhTu8Vpx9xlPHYf9dvlM94o4d7DdDPsobIqY
 f/BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=IUVURclu4J5SqNxjPdjQP9bMIrQuMDA89LCMPcceyWQ=;
 b=p7UXcS44gItifmiJM2uKBtmVx+tGCMRmyVuCGYU/JDqeRImKEf27GX49yI7D3aJbpx
 6mg51cA6dEFbHLaU0b5C3YO0ja+fGi6EoZIwIVujuDWftkh6hZFIBLlnDMTx1SAtl146
 m4dzOJtW+iYTYWQcBGgpHKdUoThCOhOGOqMkQKGRxwESgB5jm5JbpOdoy/FhKPvhzsNm
 B1DW5bDU6lT1izq9M1ByoB3sr8WcKnrT+6jXFPEJboTCdHnCuGGmKrxtLdM0+kIybdo4
 ytWC88JOUY1GM+zRYNXJ9H0/QdCMtKVXU40fgg00eN7MdsdHoQOrhxsnH7Re8kNDheBE
 JgWw==
X-Gm-Message-State: AOAM530/YMF/CplL7zJs2WtQMh8glMv7eLyIBFpWHNXQ8pBpH5FXzwb1
 RJ0FCfJt0OrziUD6wRXV1ATdXADem8Xop8BY
X-Google-Smtp-Source: ABdhPJxZS1mmrr8EaJVl6eD8OjOf5wG3gEHDNK3aVIWrrT+Hqfo+gVOONr8y3sab9yFSH+g/kMSrcA==
X-Received: by 2002:a05:6402:7c8:: with SMTP id
 u8mr17065154edy.153.1603732055210; 
 Mon, 26 Oct 2020 10:07:35 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id se12sm6230739ejb.37.2020.10.26.10.07.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Oct 2020 10:07:34 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAE_Rk56YtB8XtRz6m+OSksU6a+VjdeEDS=1s=8-onsEkFz8eTA@mail.gmail.com>
Message-ID: <58eff0f9-cdca-55fc-fdb8-266a678bc86d@ettus.com>
Date: Mon, 26 Oct 2020 18:07:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAE_Rk56YtB8XtRz6m+OSksU6a+VjdeEDS=1s=8-onsEkFz8eTA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] low send data rate - x310- VM
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
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

Your virtualizer needs to support Jumbo frames for any reasonable packet
rate. You saying the MTU being at most 1500 means that either your
network hardware can't do Jumbo frames (unlikely, in 2020), or that
you're not passing through your network properly into the VM.

You'll want to investigate things like virtualized network cards;
especially, you do **not** want to do NAT between your VM and your Host.

On 23.10.20 19:07, Daniel Ozer via USRP-users wrote:
> Hi everyone,
> I'm working on usrp x310 .
> After few experiment with the system, i tried to send data from file source
> (gnuradio) to my own OOT rfnoc block that do nothing (tready is always on
> '1'  and one register that count axi_stream data valid) i saw that the
> average send rate to the FPGA is 320KB which is low .
> The packet size is on the maximum MTU 1500 .
> What can I do to make the Software send data faster ?
> my setup is :
> usrp x310 connected to a switch(with 1Gb ethernet ) and I'm working on
> linux-vm( VMWARE) that is on a windows server that is connected to the same
> switch .
>
> thanks in advanced
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
