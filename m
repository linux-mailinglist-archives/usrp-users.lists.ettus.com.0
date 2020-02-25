Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4404316EDAD
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2020 19:15:47 +0100 (CET)
Received: from [::1] (port=38104 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6ekE-00064A-DN; Tue, 25 Feb 2020 13:15:46 -0500
Received: from mail-qv1-f50.google.com ([209.85.219.50]:35775)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1j6ekA-0005ry-8e
 for usrp-users@lists.ettus.com; Tue, 25 Feb 2020 13:15:42 -0500
Received: by mail-qv1-f50.google.com with SMTP id u10so108363qvi.2
 for <usrp-users@lists.ettus.com>; Tue, 25 Feb 2020 10:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Gx/5x/Xnyl9XE5rdXgN8r8HcBASwrLbH0tVBP5AdoWE=;
 b=idTlk/libyL93ZcHeOaL2bRpAJcCGS1olji0DgeVA/gqbwAhwaY4X3jGm+VQyf8HD0
 UEBzIocBdtSRgItNAP55olKbqPP0soe6DBCmW2xPKao3l9uUYAg353Uv2Dsv+i2B7i4l
 PmqLmy0nOSGq12TcEa95kQCDQFHGffiSStEMr4QQgFjkJUJxg8+4bScMgEMJTqVxMHsK
 pZJ3H8ndN5mt6FIAlsDYK8YRJMeF6RnjOsseRpWTfz0sqGPoNDTBYd6SXqxqNceGpK1d
 DZ6rZ2qFvgxnm4vk840Fx1CZuk6Jx6/fMnuay+EK9tRkqQ5lGtpoiaHfv5XSo9y6BDES
 r/EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Gx/5x/Xnyl9XE5rdXgN8r8HcBASwrLbH0tVBP5AdoWE=;
 b=lTyRkho/Xsc41LK8bkl935FVof5iB9hd4KAY97UhP5HNhi37TO1jbRBK2cpXIFVetO
 QP8JbEtUsqjaYdxaYSkIzbFZxxXlwkbhHdLMeCcGBXR10/KWT/hZgvXlnmofdyfpGWRE
 4GPu8nA/dDxh72Ku0JsjV5KBNoXSoQwkCjHGiZKVyHlib8a5XSSI18ABTUkhy7SxXh3j
 KZCti1BzxXV63Atm54ImR0A50cA7oAew0Y65bJFoOkbxJgWSy3eeU1mZTLPGwU7kVtgK
 qZpKXkU84P9BATiagfsEpSp+2TuWfLjehUB8Mw0V6YvZWcrNN/GzXHt2T1+6gG5qEeD3
 mDMA==
X-Gm-Message-State: APjAAAWOTC3MyI6zWHzSs/QJ9rA4yATTeP+fZK28JUad/K7BxhJOunXn
 BWUESj5OzUjGCQVg/XHDXentBzjri4g=
X-Google-Smtp-Source: APXvYqx/lajwFIglXY3OBPyc2SVrgdWsm20idDPuMdwqbKpPbdEKGCGkz6IKLPKYv/vEYgWt32ILzA==
X-Received: by 2002:a05:6214:50f:: with SMTP id
 v15mr207014qvw.42.1582654501377; 
 Tue, 25 Feb 2020 10:15:01 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id g2sm6564992qka.42.2020.02.25.10.15.00
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Feb 2020 10:15:00 -0800 (PST)
Message-ID: <5E556424.7080309@gmail.com>
Date: Tue, 25 Feb 2020 13:15:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <c8cd447d-acde-1201-1dbb-1562017c2153@itsystems.it>
In-Reply-To: <c8cd447d-acde-1201-1dbb-1562017c2153@itsystems.it>
Subject: Re: [USRP-users] linuhd 3.14.1.1 Problem in setting rx frequecy on
 n310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 02/25/2020 08:43 AM, Paolo Palana via USRP-users wrote:
> Hello to all the mailing list.
>
> I've a little problem in setting the rx frequency on my n310 when I need
> to acquire from all 4 channels.
>
> I use the n310 directly in my program using libuhd. The code I use in
> order to set the rx_frequency is:
>
>      First of all set the subdevs:
>
>           if(vm.count("subdev")){
>                  mUsrp->set_rx_subdev_spec(mSubDev);
>          }
>
>          ............
>
>           for(size_t i=0; i<mFreqs.size(); i++)
>          {
>              cout << boost::format("Setting chan %d Freq: %f MHx") % (i)
> % (mFreqs[i]/1e6) << endl;
>              uhd::tune_request_t tune_request(mFreqs[i]);
>              tune_request.args = uhd::device_addr_t("mode_n=integer");
>              mUsrp->set_rx_freq(tune_request, i);
>              cout << boost::format("New RX Freq chan %d: %f MHz...") % i
> % (mUsrp->get_rx_freq(i)/1e6) << endl << endl;
>          }
>
>
> The output I can see on my console confirm that every channel should
> have the rigth frequency.
>
> Of course this is not the case.
>
>
> Suppose I wont acquire from A:0 RX2 (if I use TX/RX is the same) and A:1
> RX2  tuning the first device at 654.0 MHZ
>
> and the second to 896.8 MHZ. What happen is that both channels are tuned
> to the last frequency (I'm sure of it because I tested it with a signal
> generator).
>
> I'm unable to understand why this happen. Any help is apreciated.
>
> Thank you
>
The N310 is based on the AD9371 RF Front-end chip.  There are two of 
them in an N310.  Those chips use a *SHARED* LO between the two channels,
   so you cannot set independent frequencies within the same chip (A:0 
A:1  or B:0 B:1).




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
