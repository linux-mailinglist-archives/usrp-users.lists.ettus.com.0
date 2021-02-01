Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E17430B36A
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 00:23:22 +0100 (CET)
Received: from [::1] (port=39324 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6iXQ-0005YV-Lb; Mon, 01 Feb 2021 18:23:20 -0500
Received: from mail-qt1-f170.google.com ([209.85.160.170]:41533)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l6iXM-0005QV-RR
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 18:23:16 -0500
Received: by mail-qt1-f170.google.com with SMTP id t14so13653832qto.8
 for <usrp-users@lists.ettus.com>; Mon, 01 Feb 2021 15:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Wj/EV5wy9UGCbxH5lwU7bTa1mOrdbsEzUNXlYJGlcwA=;
 b=mf7G7YxaEAB6LO61afz1M/dmjMVrArKbdVbVLiO/Jbcs4KKszRGOv9KcMJSxVrYN0D
 h/bEaq2/FecIIG60QrOGs1jQgzEFRpd4J1kvYxMOOYyaxVsaFmyfUBsArL+os1fuu7/Q
 NfYDwVuQ7BpAWFOJFa4LjsahUPiDe1edT6xwrpztDcLvzd30SCe9IommhI2lw3PSZVeO
 1VZO137hI/x+NGZignPkhS30hGond9QVv1ooeici2rHyKqLjqs0ibGv2oHyEHDh/jjRG
 55K156bpSle+h1ncAFiNPGWpqSiH0Gw4B8gChRvZYIKCMAGmkF2Q6HXSREtbOlEhNd4P
 16uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Wj/EV5wy9UGCbxH5lwU7bTa1mOrdbsEzUNXlYJGlcwA=;
 b=DrgLnd3noJ4of+MXWb84zF7C+PJBnJG04esJffpQbf+T3nTp0HbTUYvXH90se7a/La
 ek4b/aqYsoHC9sL/+txu2QO/znRNDTFYg1+iX45EGdhzWsXpJPQRTakwOZU1zCAuEKcp
 ZyMGM8p6ZfYCjl5CxJmBooVlW5PWHeOOz50uJEFPSQu3kMUfY0FllthQZSfCn2FWfMp4
 p4wZ45eyI5nmsNNGUGE7AfQGx1dRa95n58puqlgCnyjVqqG89YJNRpMKgCBRzYmAWdp8
 eZJTqUhbZzIx8yHfmuy7AH7vD+VHJ71kWnUog6AryTVoBrs9175JB8zmUiLr/tablAmu
 cTYg==
X-Gm-Message-State: AOAM533HLkzaI0UzSaHrt+CjY05wXqb9bFLozQczedRjm+wRao+lnsZP
 graWgIoSkInXC9SBWZsMDRxQKWpigHs=
X-Google-Smtp-Source: ABdhPJxW5PcE7fzLex++wKy3jrAuQDuX1bR5cnfDBGGjNADSuaaQ3UQZsfFZhZ47y0MZj26SZWem4Q==
X-Received: by 2002:aed:2b44:: with SMTP id p62mr17334824qtd.385.1612221756118; 
 Mon, 01 Feb 2021 15:22:36 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id
 p17sm14801488qke.134.2021.02.01.15.22.35
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 15:22:35 -0800 (PST)
Message-ID: <60188D3A.6080508@gmail.com>
Date: Mon, 01 Feb 2021 18:22:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAB__hTQTdZiv5WNa-wEU7vUPZMC9+_+LQP0j36ijaEgM4jHyJw@mail.gmail.com>
In-Reply-To: <CAB__hTQTdZiv5WNa-wEU7vUPZMC9+_+LQP0j36ijaEgM4jHyJw@mail.gmail.com>
Subject: Re: [USRP-users] DPDK troubles (invalid ELF header loading dpdk
 library)
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
Content-Type: multipart/mixed; boundary="===============1573622790463281588=="
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
--===============1573622790463281588==
Content-Type: multipart/alternative;
 boundary="------------000300020904070305020105"

This is a multi-part message in MIME format.
--------------000300020904070305020105
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/01/2021 06:15 PM, Rob Kossler via USRP-users wrote:
> Hi,
> I have 2 systems (each with host PC and N310) for which I'm having 
> similar issues in trying to get DPDK up and running. After going 
> through the UHD Manual DPDK instructions and DPDK app note, I am past 
> the point at which the "dpdk-devbind" seems to work fine, but I get 
> the following error when I run benchmark_rate.
>
> I am running Ubuntu 20.04.LTS and installed DPDK 18.11.11 by 
> downloading/building from source. I built UHD (latest 4.0) from source 
> and it seemed happy finding DPDK and building with DPDK support. It 
> seems like a compatibility issue, but I can't figure it out. Any 
> suggestions?
> Rob
>
> // *** this is the error on System 1
> EAL: /usr/local/lib/libdpdk.so: invalid ELF header
> EAL: FATAL: Cannot init plugins
> EAL: Cannot init plugins
>
> // this is the error on System 2 (nearly the same but different library)
> EAL: 
> /usr/local/share/dpdk/x86_64-native-linuxapp-gcc/lib//librte_pmd_ark.a: invalid 
> ELF header
> EAL: FATAL: Cannot init plugins
> EAL: Cannot init plugins
>
>
This would seem to indicate that something very horrible went wrong in 
the build or DPDK--creating ELF headers that aren't correct for the
  type of hardware they're being used on.


--------------000300020904070305020105
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/01/2021 06:15 PM, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAB__hTQTdZiv5WNa-wEU7vUPZMC9+_+LQP0j36ijaEgM4jHyJw@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi,<br>
        <div>I have 2 systems (each with host PC and N310) for which I'm
          having similar issues in trying to get DPDK up and running. 
          After going through the UHD Manual DPDK instructions and DPDK
          app note, I am past the point at which the "dpdk-devbind"
          seems to work fine, but I get the following error when I run
          benchmark_rate.</div>
        <div><br>
        </div>
        <div>I am running Ubuntu 20.04.LTS and installed DPDK 18.11.11
          by downloading/building from source. I built UHD (latest 4.0)
          from source and it seemed happy finding DPDK and building with
          DPDK support. It seems like a compatibility issue, but I can't
          figure it out. Any suggestions?</div>
        <div>Rob</div>
        <div><br>
        </div>
        <div><font face="monospace">// *** this is the error on System 1</font></div>
        <div><font face="monospace">EAL: /usr/local/lib/libdpdk.so:
            invalid ELF header<br>
            EAL: FATAL: Cannot init plugins<br>
            EAL: Cannot init plugins<br>
          </font></div>
        <div><font face="monospace"><br>
          </font></div>
        <div><font face="monospace">// this is the error on System 2
            (nearly the same but different library)</font></div>
        <div><font face="monospace">EAL:
            /usr/local/share/dpdk/x86_64-native-linuxapp-gcc/lib//librte_pmd_ark.a:
            invalid ELF header<br>
            EAL: FATAL: Cannot init plugins<br>
            EAL: Cannot init plugins<br>
          </font></div>
        <div><br>
        </div>
      </div>
      <br>
    </blockquote>
    This would seem to indicate that something very horrible went wrong
    in the build or DPDK--creating ELF headers that aren't correct for
    the<br>
     type of hardware they're being used on.<br>
    <br>
  </body>
</html>

--------------000300020904070305020105--


--===============1573622790463281588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1573622790463281588==--

