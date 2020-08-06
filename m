Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B49FE23E03D
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 20:18:37 +0200 (CEST)
Received: from [::1] (port=53584 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3kTL-0001S7-JW; Thu, 06 Aug 2020 14:18:35 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:33473)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k3kTH-0001KK-Pm
 for usrp-users@lists.ettus.com; Thu, 06 Aug 2020 14:18:31 -0400
Received: by mail-qk1-f169.google.com with SMTP id p4so2025976qkf.0
 for <usrp-users@lists.ettus.com>; Thu, 06 Aug 2020 11:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=9lLER1xNglt5v53/GsV6PCI0EXbO5w2lOW5ruXebxJQ=;
 b=TpwzLrpYN3nxGsl0K5amNyEAMaoq1Lz5/KmluNNajUdVS3hikXZJPWzbcVPZiV/QTx
 MxEx19Vxzhim1bb7EpLzHUhrNVInLNv8ehHGaYbtd+UqYpLididiwQ/N30nat0oNd9b0
 LjhulqiRtgo3gGXKmGRzEhe/UITvLf0N/ogITPYmv0wpn9t6NoO2VTuZaQYSr2knqXtd
 4bsNooIiXysP7wE23hFCNj6eQ5GD5msmSjkUjS93GdoGyIRiBNGkmfJ9VdD9e1VxeGTQ
 id7xSOzlIZP2Sl5mXyU3snu1Vx00wuvzOoCV+dDW/2hFDarsWq8+n3PPTR9fr1YcNkiC
 nIBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=9lLER1xNglt5v53/GsV6PCI0EXbO5w2lOW5ruXebxJQ=;
 b=J11dLrh7JlnG/pb+H1vqlTqKu0VnxXwGD9dg9l4s6JaDvDl3noabcOEORUWOvqT23u
 6Ybh7ncPK/qOBDs85ykCQhydNHfgA3LIsDTErU0ma88wn9vQUdOfXB6whKGSCfg+LvGq
 aghRILn0QA4AXuDP4COgvzYPU8UZzMS3m4p3JllmwJFuORuqOHaekXG+BL0k52NbAT69
 DOm/RF5TzVoeLZtRJryzM5C7F8lH5iP23wRuB3d5Jlid/5yLe2I0iELX+Rxq8/stEVpJ
 5lhRywIvYeW4R85mxBkzFM7oIGMEU4BbW4W2S2D8178EdfGZbYFgt6JwFPCYXQx5AXFy
 0Omw==
X-Gm-Message-State: AOAM530B02pKGVmyJnjbHsM4I991IHBgdYxS1Zl6Lud8mAMOrYZtMH8S
 WKHKTOAhLrTNjrvHb5Tgq1G+8HdyPts=
X-Google-Smtp-Source: ABdhPJzdeiUrQ5um+8AxsICKlVV75IBTeCor95QS72q7zDAOvQMrBkJ125P/9gisVNgPpcAe0tL1AA==
X-Received: by 2002:a05:620a:1256:: with SMTP id
 a22mr9665146qkl.95.1596737871045; 
 Thu, 06 Aug 2020 11:17:51 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id q13sm4996460qkn.85.2020.08.06.11.17.50
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Aug 2020 11:17:50 -0700 (PDT)
Message-ID: <5F2C494D.5080507@gmail.com>
Date: Thu, 06 Aug 2020 14:17:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACjmV_=fW9LdJPb0TtAgP_QH19cSDD13BgRkvDzOd1JohUJ8TQ@mail.gmail.com>
In-Reply-To: <CACjmV_=fW9LdJPb0TtAgP_QH19cSDD13BgRkvDzOd1JohUJ8TQ@mail.gmail.com>
Subject: Re: [USRP-users] issue about subdev spec
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
Content-Type: multipart/mixed; boundary="===============8820512006370490477=="
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
--===============8820512006370490477==
Content-Type: multipart/alternative;
 boundary="------------020900020605060404030104"

This is a multi-part message in MIME format.
--------------020900020605060404030104
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/06/2020 01:32 PM, Damon qiu via USRP-users wrote:
> Hi all,
>
> I am using two USRP X310s to transmit signals on 2 channels. The two 
> USRP are synchronized through a octoclock-g.
>
> A multi_usrp object is used to control those two USRP, device address 
> is set to addr0=192.168.40.2,addr1=192.168.60.2. I want to set two 
> USRP transmitting signal at RFA at the same time. I tried two ways to 
> set up the tx channel and subdev spec:
>
> Method 1: The TX frontend specification is set to A:0 for both two mboard.
> d_dev->set_tx_subdev_spec("A:0");
> or
> d_dev->set_tx_subdev_spec("A:0", 0);
> d_dev->set_tx_subdev_spec("A:0", 1);
>
> uhd::stream_args_t stream_args(tx_cpu, tx_otw);
> stream_args.channels = {0, 1};
> uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);
>
> Method 2: The TX frontend specification is set to "A:0 B:0"for both 
> two mboard.
> d_dev->set_tx_subdev_spec("A:0 B:0");
> or
> d_dev->set_tx_subdev_spec("A:0 B:0", 0);
> d_dev->set_tx_subdev_spec("A:0 B:0", 1);
>
> uhd::stream_args_t stream_args(tx_cpu, tx_otw);
> stream_args.channels = {0, 2};
> uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);
>
> In the above two methods, there is a certain probability (about 10% to 
> 30%) that the two transmission channels are on the same motherboard. I 
> guess this is a bug of UHD.
>
> OS: Ubuntu 18.04
> UHD: UHD-3.15.LTS
>
> Please CC me as I can only receive the daily digest of the mailing list.
>
> Best regards,
> Damon
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
Not sure if this would make a difference, but

try:

stream_args.channels.push_back(0);
stream_args.channels.push_back(1):

Instead of your:

stream_args.channels = {0,1};

I think these should be equivalent, but my C++ fluency is low...



--------------020900020605060404030104
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/06/2020 01:32 PM, Damon qiu via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CACjmV_=fW9LdJPb0TtAgP_QH19cSDD13BgRkvDzOd1JohUJ8TQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi all,<br>
        <br>
        I am using two USRP X310s to transmit signals on 2 channels. The
        two USRP are synchronized through a octoclock-g.<br>
        <br>
        A multi_usrp object is used to control those two USRP, device
        address is set to addr0=192.168.40.2,addr1=192.168.60.2. I want
        to set two USRP transmitting signal at RFA at the same time. I
        tried two ways to set up the tx channel and subdev spec:<br>
        <br>
        Method 1: The TX frontend specification is set to A:0 for both
        two mboard.<br>
        d_dev-&gt;set_tx_subdev_spec("A:0");<br>
        or<br>
        d_dev-&gt;set_tx_subdev_spec("A:0", 0);<br>
        d_dev-&gt;set_tx_subdev_spec("A:0", 1);<br>
        <br>
        uhd::stream_args_t stream_args(tx_cpu, tx_otw);<br>
        stream_args.channels = {0, 1};<br>
        uhd::tx_streamer::sptr tx_stream =
        d_dev-&gt;get_tx_stream(stream_args);<br>
        <br>
        Method 2: The TX frontend specification is set to "A:0 B:0"for
        both two mboard.<br>
        d_dev-&gt;set_tx_subdev_spec("A:0 B:0");<br>
        or<br>
        d_dev-&gt;set_tx_subdev_spec("A:0 B:0", 0);<br>
        d_dev-&gt;set_tx_subdev_spec("A:0 B:0", 1);<br>
        <br>
        uhd::stream_args_t stream_args(tx_cpu, tx_otw);<br>
        stream_args.channels = {0, 2};<br>
        uhd::tx_streamer::sptr tx_stream =
        d_dev-&gt;get_tx_stream(stream_args);<br>
        <br>
        In the above two methods, there is a certain probability (about
        10% to 30%) that the two transmission channels are on the same
        motherboard. I guess this is a bug of UHD.<br>
        <br>
        OS: Ubuntu 18.04<br>
        UHD: UHD-3.15.LTS<br>
        <br>
        Please CC me as I can only receive the daily digest of the
        mailing list.<br>
        <br>
        Best regards,<br>
        Damon<br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    Not sure if this would make a difference, but<br>
    <br>
    try:<br>
    <br>
    stream_args.channels.push_back(0);<br>
    stream_args.channels.push_back(1):<br>
    <br>
    Instead of your:<br>
    <br>
    stream_args.channels = {0,1};<br>
    <br>
    I think these should be equivalent, but my C++ fluency is low...<br>
    <br>
    <br>
  </body>
</html>

--------------020900020605060404030104--


--===============8820512006370490477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8820512006370490477==--

