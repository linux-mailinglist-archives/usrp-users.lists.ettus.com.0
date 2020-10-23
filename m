Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B20297598
	for <lists+usrp-users@lfdr.de>; Fri, 23 Oct 2020 19:12:17 +0200 (CEST)
Received: from [::1] (port=40372 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kW0bw-0004lE-GO; Fri, 23 Oct 2020 13:12:16 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:40123)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kW0bs-0004d4-Ht
 for usrp-users@lists.ettus.com; Fri, 23 Oct 2020 13:12:12 -0400
Received: by mail-qk1-f174.google.com with SMTP id h140so1819305qke.7
 for <usrp-users@lists.ettus.com>; Fri, 23 Oct 2020 10:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=qoamUXHGfmfkS9t2dCDix0YRuJTNJSStvrRfL2FbFAQ=;
 b=fzP52h/YyS08SU4PMIXLdTywxJDi2ZEAzEk/3CPxkawkFYVAs4h/dITmCgBzzNK7Pu
 Nh07UmLFDlAtnNhnz9KwSdvVbPJDjpbWMvHt7gPKweOjexTQ2m7pm55fdlQead/HD4vG
 /ozX06K5JVVvUv4/lEDi4mlBo6h0mLScX5R2frl2Lksggdxh9n+AIPcQ8DVYC6moSZgK
 icz2kpXY8JS8f/YLu8TMtGGPbo0EqTYW+AMYV+wuZAXmgad0T4BOmfPxVVA/MnLXiCy9
 NjSIaP320MdY34tEkYRmxlmMBfmBshDVtd7tZslPkKc/4W0I9hk9/1xBxSj9CIxjVSFa
 uS4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=qoamUXHGfmfkS9t2dCDix0YRuJTNJSStvrRfL2FbFAQ=;
 b=uaiUO99hi0zZYidUtB3X/xOGy+zRgpfaywNJotlt/TITIYgLN5KPgqyykaiRkqKf2+
 7s7FM/mRO0+nO9H3WWoCD2hwHQsieggRRBn0W/895ZrZ8hHZIN82rXu6VcibVS1gDZoG
 jNEmkf8VOvhJu7QXLAD+UEBGj5FVJ/YD2wbhqQn7ux3jiQJ7PCSlIUda3g4u0hKgFlSk
 H7uZFZcAeaFdQhhru3freGa/IKl1zdGwhROfe/qu/YVTndsPlbekNwpuRbjy/TyPfsJP
 kawjcXyxdTG1+vA8ymbU93FYVEOzxT0bDeYjpFA44dcj1SJPcKgmyIbyeuDFjuY7AD1S
 8jOw==
X-Gm-Message-State: AOAM531sRW0HvtBzWyviRrNMTDRsDIDLQnadZgAOVb8j+c84bGlV/A3B
 Avvy15wpxCMVX3v1HLsxX+wtFCr2Ga0xow==
X-Google-Smtp-Source: ABdhPJwVDeb4JGtGFoAjIb521k7rSA5BLOdoEo0PEXl/aSUN7t/PnnRDDaNReujZy7Q6nX0HqmgqYA==
X-Received: by 2002:a37:652:: with SMTP id 79mr3046547qkg.163.1603473091652;
 Fri, 23 Oct 2020 10:11:31 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id u2sm1223939qtw.40.2020.10.23.10.11.31
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Oct 2020 10:11:31 -0700 (PDT)
Message-ID: <5F930EC2.3070304@gmail.com>
Date: Fri, 23 Oct 2020 13:11:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAE_Rk56YtB8XtRz6m+OSksU6a+VjdeEDS=1s=8-onsEkFz8eTA@mail.gmail.com>
In-Reply-To: <CAE_Rk56YtB8XtRz6m+OSksU6a+VjdeEDS=1s=8-onsEkFz8eTA@mail.gmail.com>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============0559676727081714809=="
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

This is a multi-part message in MIME format.
--===============0559676727081714809==
Content-Type: multipart/alternative;
 boundary="------------090104020406050706060802"

This is a multi-part message in MIME format.
--------------090104020406050706060802
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/23/2020 01:07 PM, Daniel Ozer via USRP-users wrote:
> Hi everyone,
> I'm working on usrp x310 .
> After few experiment with the system, i tried to send data from file 
> source (gnuradio) to my own OOT rfnoc block that do nothing (tready is 
> always on '1'  and one register that count axi_stream data valid) i 
> saw that the average send rate to the FPGA is 320KB which is low .
> The packet size is on the maximum MTU 1500 .
> What can I do to make the Software send data faster ?
> my setup is :
> usrp x310 connected to a switch(with 1Gb ethernet ) and I'm working on 
> linux-vm( VMWARE) that is on a windows server that is connected to the 
> same switch .
>
> thanks in advanced
>
What does the "benchmark_rate" utility report in terms of maximum data 
transfer rate using a standard factory FPGA image?

The performance inside a VM is often much less than what you'd get on 
"bare metal".


--------------090104020406050706060802
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/23/2020 01:07 PM, Daniel Ozer via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAE_Rk56YtB8XtRz6m+OSksU6a+VjdeEDS=1s=8-onsEkFz8eTA@mail.gmail.com"
      type="cite">
      <div dir="rtl">
        <div style="direction:ltr">Hi everyone,</div>
        <div style="direction:ltr">I'm working on usrp x310 .</div>
        <div style="" dir="ltr">After few experiment with the system, i
          tried to send data from file source (gnuradio) to my own OOT
          rfnoc block that do nothing (tready is always on '1'  and one
          register that count axi_stream data valid) i saw that the
          average send rate to the FPGA is 320KB which is low .</div>
        <div style="" dir="ltr">The packet size is on the maximum MTU
          1500 .</div>
        <div style="" dir="ltr">What can I do to make the Software send
          data faster ?</div>
        <div style="" dir="ltr">my setup is :</div>
        <div style="" dir="ltr">usrp x310 connected to a switch(with 1Gb
          ethernet ) and I'm working on linux-vm( VMWARE) that is on a
          windows server that is connected to the same switch .</div>
        <div style="" dir="ltr"><br>
        </div>
        <div style="" dir="ltr">thanks in advanced </div>
      </div>
      <br>
    </blockquote>
    What does the "benchmark_rate" utility report in terms of maximum
    data transfer rate using a standard factory FPGA image?<br>
    <br>
    The performance inside a VM is often much less than what you'd get
    on "bare metal".<br>
    <br>
  </body>
</html>

--------------090104020406050706060802--


--===============0559676727081714809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0559676727081714809==--

