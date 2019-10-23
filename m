Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E52E1DEC
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2019 16:18:13 +0200 (CEST)
Received: from [::1] (port=50280 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNHSl-0008Ex-FU; Wed, 23 Oct 2019 10:18:11 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:32797)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iNHSh-00086v-8o
 for USRP-users@lists.ettus.com; Wed, 23 Oct 2019 10:18:07 -0400
Received: by mail-qt1-f175.google.com with SMTP id r5so32559256qtd.0
 for <USRP-users@lists.ettus.com>; Wed, 23 Oct 2019 07:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=5rIL2yNaItatXtkcjp7JXEGqGqwaIN+s/GF6rGExEbI=;
 b=k5S5kVACksxYJwGjUd07/3wrKonJXk3LHpce1OMvzR4TsZJaFh3sWEk1g/htbTcBe1
 5qgPL9byxitteBol0PL1Z+FY4s/rdgVaMMpSDhgXkCiaiYWe3H+Q5gs2HT9YxWtuLfVg
 vYTeuj4//jLj3N/RE+o8Cwp7SXzgeLK/xmoe8N9hQ3Cu83kyFSILWZH12TNT/3MFye2m
 AmXH9Y0oofwGFNYIZVzEhndlPWp59xwIi7FStSIVMyzAkkGwX8TdwIaMCBUgDfnQTsZV
 AniEJzUTNuTOzAFCWdV3t7ce1LK2EM9P2W4VXVsTuqceH+Mib+Rczgj2byV43Tl94sIM
 v7ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=5rIL2yNaItatXtkcjp7JXEGqGqwaIN+s/GF6rGExEbI=;
 b=SfC1BtlXbowgQ3YLjrGSZexDzBz3HYEnxjwfRrC1zSsKoHPGmfOloaNvwaeYCl/v28
 nZkskqRO/2bWiUwSDPbQY5yuQqh36Cprjaz6UVt933zOXH89cxfM+Hd/Nwz1KEseGM4f
 cvabuWdNRPauq2zo9Ff1zHkXBIIOsP40rlChe2/vJMX1JskazNrNB6fI0YrgSBh2b4Mn
 EwswG7csKOnM/Thq0s0DWK4sBjUuRB7kswA5lrG0ZYHgGgNyW/1E3dH3tfJhHwvhoHej
 tNCOgsEeipV2jdfG03Z+4U0cys8qvOe1e4/OWUjxggX9Qs6CXlba79WPuAhk7fm2P1xn
 yL+Q==
X-Gm-Message-State: APjAAAXsxex5/t7EpoOQ3S0eqZdWmYyI7botbFi2rABHWGYQS3ItqI1j
 mQkjXi9qjg/TCM7bjlRSPa7X26z4lf0=
X-Google-Smtp-Source: APXvYqyuh2xejbuOw1PuBjuRYH1QrQp04fjErVmcDQ7F0yH+1Lhgx/S0gmbTEzwXzED79r2QQDpK0A==
X-Received: by 2002:ac8:554c:: with SMTP id o12mr9532541qtr.388.1571840246481; 
 Wed, 23 Oct 2019 07:17:26 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137]) by smtp.googlemail.com with ESMTPSA id
 x125sm14477067qkc.24.2019.10.23.07.17.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Oct 2019 07:17:25 -0700 (PDT)
Message-ID: <5DB060F5.6020009@gmail.com>
Date: Wed, 23 Oct 2019 10:17:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Bell <richard.bell4@gmail.com>
References: <CAMMoi3tOy8feTRfTKQ-ipAcQpoyAgf4VzCQjq6NcRNzB=-3yag@mail.gmail.com>
 <EA7ABB40-42B2-41C4-B0D4-F51ACF3DE936@gmail.com>
 <CAMMoi3vGDD-A72_zZTCcSU-G-Rt6Ab354RZHSAtDLU0Cv1e76Q@mail.gmail.com>
In-Reply-To: <CAMMoi3vGDD-A72_zZTCcSU-G-Rt6Ab354RZHSAtDLU0Cv1e76Q@mail.gmail.com>
Subject: Re: [USRP-users] Multi-USRP with X300's
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0833090333594001114=="
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
--===============0833090333594001114==
Content-Type: multipart/alternative;
 boundary="------------090707000706090701070708"

This is a multi-part message in MIME format.
--------------090707000706090701070708
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/22/2019 02:50 PM, Richard Bell wrote:
> I think I sort of figured it out, though the motherboard, subdevice 
> and channel terminology is still confusing.
>
> 1) Each USRP X300 has 1 motherboard
> 2) Each motherboard has two subdevice slots, A and B
> 3) Each subdevice slot has 1 channel
>
> If I want to use both subdevices on USRP1 and only one subdevice on 
> USRP2 then the following settings would make that work:
>
> Device Arguments := "addr0=192.168.10.2,addr1=192.168.11.2"
> Mb0: Subdev Spec := A:0 B:0
> MB1: Subdev Spec := A:0
> Num Channels := 3
>
> To use only 1 subdevice on each USRP this would work:
>
> Device Arguments := "addr0=192.168.10.2,addr1=192.168.11.2"
> Mb0: Subdev Spec := A:0
> MB1: Subdev Spec := A:0
> Num Channels := 2
>
> To use all 4 subdevices at the same time:
> Device Arguments := "addr0=192.168.10.2,addr1=192.168.11.2"
> Mb0: Subdev Spec := A:0 B:0
> MB1: Subdev Spec := A:0 B:0
> Num Channels := 4
This (and other pages in the same collection) might help you understand 
things:

https://files.ettus.com/manual/page_configuration.html

A "channel" is just a sample stream, and the other configuration 
parameters determine which hardware bits-and-pieces are connected to that
   channel.  Indeed, 1 motherboard == 1 USRP box.  Some such "boxes" 
have two "slots" (A and B), and others have only one.  Within those
   slots, there are 1 or more subdevices, with nomenclature that varies 
by hardware:

https://files.ettus.com/manual/page_dboards.html


>
> Will there every be a situation where I would do something like A:1 
> instead of A:0 in the subdevice specs?
>
> On Tue, Oct 22, 2019 at 11:25 AM Marcus D Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     Could you share your flow graph with us?
>
>     What daughtercards do you have installed?
>
>     Sent from my iPhone
>
>     > On Oct 22, 2019, at 2:16 PM, Richard Bell via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>     >
>     > ﻿
>     > Hello,
>     >
>     > I'm a little confused about how I should distinguish between two
>     different USRPs X300's and the two different motherboards per USRP
>     X300 in this type of setup. I am feeding a 10 MHz ref and PPS ref
>     to both USRPs. What I have right now is a gr flowgraph with a
>     single USRP Sink block that I have configured with the following
>     device address
>     >
>     > "addr0=192.168.10.2,addr1=192.168.11.2"
>     >
>     > and I have selected
>     >
>     > Num Mboards = 2
>     > Num Channels = 2
>     >
>     > But this setup only uses the addr0=192.168.10.2 USRP to receive
>     on both RFA and RFB ports. I would like to configure receiving on
>     192.168.10.2 RFA TX/RX and 192.168.11.2 RFA TX/RX.
>     >
>     > How do I configure this properly?
>     > _______________________________________________
>     > USRP-users mailing list
>     > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------090707000706090701070708
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/22/2019 02:50 PM, Richard Bell
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAMMoi3vGDD-A72_zZTCcSU-G-Rt6Ab354RZHSAtDLU0Cv1e76Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>I think I sort of figured it out, though the motherboard,
          subdevice and channel terminology is still confusing.<br>
        </div>
        <div><br>
        </div>
        <div>1) Each USRP X300 has 1 motherboard</div>
        <div>2) Each motherboard has two subdevice slots, A and B</div>
        <div>3) Each subdevice slot has 1 channel</div>
        <div><br>
        </div>
        <div>If I want to use both subdevices on USRP1 and only one
          subdevice on USRP2 then the following settings would make that
          work:</div>
        <div><br>
        </div>
        <div>Device Arguments := "addr0=192.168.10.2,addr1=192.168.11.2"</div>
        <div>Mb0: Subdev Spec := A:0 B:0</div>
        <div>MB1: Subdev Spec := A:0</div>
        <div>Num Channels := 3</div>
        <div><br>
        </div>
        <div>To use only 1 subdevice on each USRP this would work:<br>
        </div>
        <div><br>
        </div>
        <div>
          <div>Device Arguments :=
            "addr0=192.168.10.2,addr1=192.168.11.2"</div>
          <div>Mb0: Subdev Spec := A:0</div>
          <div>MB1: Subdev Spec := A:0</div>
          <div>Num Channels := 2</div>
          <div><br>
          </div>
          <div>To use all 4 subdevices at the same time:</div>
          <div>
            <div>Device Arguments :=
              "addr0=192.168.10.2,addr1=192.168.11.2"</div>
            <div>Mb0: Subdev Spec := A:0 B:0<br>
            </div>
            <div>MB1: Subdev Spec := A:0 B:0<br>
            </div>
            <div>Num Channels := 4</div>
          </div>
        </div>
      </div>
    </blockquote>
    This (and other pages in the same collection) might help you
    understand things:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_configuration.html">https://files.ettus.com/manual/page_configuration.html</a><br>
    <br>
    A "channel" is just a sample stream, and the other configuration
    parameters determine which hardware bits-and-pieces are connected to
    that<br>
      channel.  Indeed, 1 motherboard == 1 USRP box.  Some such "boxes"
    have two "slots" (A and B), and others have only one.  Within those<br>
      slots, there are 1 or more subdevices, with nomenclature that
    varies by hardware:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_dboards.html">https://files.ettus.com/manual/page_dboards.html</a><br>
    <br>
    <br>
    <blockquote
cite="mid:CAMMoi3vGDD-A72_zZTCcSU-G-Rt6Ab354RZHSAtDLU0Cv1e76Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>
            <div><br>
            </div>
            <div>Will there every be a situation where I would do
              something like A:1 instead of A:0 in the subdevice specs?<br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Oct 22, 2019 at 11:25
          AM Marcus D Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Could
          you share your flow graph with us?<br>
          <br>
          What daughtercards do you have installed?<br>
          <br>
          Sent from my iPhone<br>
          <br>
          &gt; On Oct 22, 2019, at 2:16 PM, Richard Bell via USRP-users
          &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
          &gt; <br>
          &gt; ﻿<br>
          &gt; Hello,<br>
          &gt; <br>
          &gt; I'm a little confused about how I should distinguish
          between two different USRPs X300's and the two different
          motherboards per USRP X300 in this type of setup. I am feeding
          a 10 MHz ref and PPS ref to both USRPs. What I have right now
          is a gr flowgraph with a single USRP Sink block that I have
          configured with the following device address<br>
          &gt; <br>
          &gt; "addr0=192.168.10.2,addr1=192.168.11.2"<br>
          &gt; <br>
          &gt; and I have selected<br>
          &gt; <br>
          &gt; Num Mboards = 2<br>
          &gt; Num Channels = 2<br>
          &gt; <br>
          &gt; But this setup only uses the addr0=192.168.10.2 USRP to
          receive on both RFA and RFB ports. I would like to configure
          receiving on 192.168.10.2 RFA TX/RX and 192.168.11.2 RFA
          TX/RX.<br>
          &gt; <br>
          &gt; How do I configure this properly?<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list<br>
          &gt; <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          &gt; <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------090707000706090701070708--


--===============0833090333594001114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0833090333594001114==--

