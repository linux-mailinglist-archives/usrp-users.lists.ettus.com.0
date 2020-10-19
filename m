Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B7E293126
	for <lists+usrp-users@lfdr.de>; Tue, 20 Oct 2020 00:20:18 +0200 (CEST)
Received: from [::1] (port=54224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kUdVn-00063T-PL; Mon, 19 Oct 2020 18:20:15 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:45698)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kUdVk-0005uj-0Q
 for usrp-users@lists.ettus.com; Mon, 19 Oct 2020 18:20:12 -0400
Received: by mail-qt1-f196.google.com with SMTP id p88so945883qtd.12
 for <usrp-users@lists.ettus.com>; Mon, 19 Oct 2020 15:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=rmA/Nh0S+zJsOX6V/GbZQjMvzdFVZmi6z+NnUncbnmQ=;
 b=H5WY2WkcK/9cqM7g7dQeMkYR9efUb7tXkICuN7ejm6Sh+y9/tagmyGonbnR+odJZsF
 y6Z139AXITe51pmx5HgXg9eHCVkRrtyThc6yHbIxEtCo0uDFlJCEdg7eT8H2CbDFql0/
 P4t5A2oXZ8hlUUeosVi4Yy8hjFjHWEhWj3iYmVIsgjuV8GiD6eDSi3ftAWJYHkTQjhGw
 SVlrBxRBVJJkyF1WfT5/BXq8INvqV/OIy103nu0dgu36c+jcul0ySBXvcftDf9RPeZaf
 gPAkgsubIYe8c8M21vW+LwKKdmRlTRVzQrqrJgcXlEPHOy+op7Oc8wYLHtMDLGn6jr/J
 SP1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=rmA/Nh0S+zJsOX6V/GbZQjMvzdFVZmi6z+NnUncbnmQ=;
 b=UJxQSppxrlPMpgXv8UDMNbYvyNio3sKCywNEu8Os8Xkj/MvPtKyktvl9I6zaQ2bv0B
 BxOGLeiAOv2LbgELipFNHUJU1KBIpGiXivWmjTH3s75nubJblPZIvwEDNreHlmt3onl3
 2ACGQFi0kzrYwcr0N0WM2/JkngtxCk/G4VE2gAKS8zdreRJ8nstnx2QqX6QXBnglASNx
 f9MuYBzB0T7h51joFuOhm4L/eLoMscDNJaOpbW1kJqFTj2lS//lfEkgHReJL9nInsS8B
 7Zs5DCIc77T4kE45JbHtr/EZhAC9coNfBuI9DAVpxo8v/a+m86r9QwO2oLDT4UfKaEOn
 0mzw==
X-Gm-Message-State: AOAM530A1bdPzMM8VRQQkBE9rvO/40QZM1cVo+1t4HVOoUulEkNAnZDz
 7IhSUAGS1OaOnWtrosu+1ZwMzG2gA5mqcA==
X-Google-Smtp-Source: ABdhPJz0fbDdJ9MKDvtm6V9WedzQxhcO2sKGBrsyb+y5QVxgR8doHHy2CNJKgliK+QdsRM5TlIQmXQ==
X-Received: by 2002:ac8:5743:: with SMTP id 3mr1687832qtx.259.1603145971180;
 Mon, 19 Oct 2020 15:19:31 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-07-174-93-0-246.dsl.bell.ca. [174.93.0.246])
 by smtp.googlemail.com with ESMTPSA id w7sm515888qte.83.2020.10.19.15.19.30
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Oct 2020 15:19:30 -0700 (PDT)
Message-ID: <5F8E10F2.4060907@gmail.com>
Date: Mon, 19 Oct 2020 18:19:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAAq7Emf908sc+rSn87GEy7g6itEiT_PDTfM2y9yv2De=793zjA@mail.gmail.com>
In-Reply-To: <CAAq7Emf908sc+rSn87GEy7g6itEiT_PDTfM2y9yv2De=793zjA@mail.gmail.com>
Subject: Re: [USRP-users] ETTUS N200 device start issue -- works only after
 second and subsequent invocations
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
Content-Type: multipart/mixed; boundary="===============8573213137606021766=="
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
--===============8573213137606021766==
Content-Type: multipart/alternative;
 boundary="------------080702060201080004080504"

This is a multi-part message in MIME format.
--------------080702060201080004080504
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/19/2020 05:32 PM, Dev Joshi via USRP-users wrote:
> Hello everyone,
>
> I hope everyone is keeping well through these unusual times. I am 
> writing to request assistance on an issue I am facing while running 
> Ettus N200 device. The  device is installed to receive high frequency 
> radio waves and it is connected to an internet port by an Ethernet 
> cable  as is the computer (Ubuntu). I can ping the device from the 
> terminal of the computer. But, whenever I invoke the USRP N200 using 
> any command, it doesn't work as shown below :
>
> uhd_find_devices --args="addr=xx.xx.xxx.xx"
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_3.15.0.HEAD-0-gaea0e2de
> No UHD Devices Found
>
> But, if  I pass the command soon after the first invocation, it works 
> as shown below:
>
> uhd_find_devices --args="addr=xx.xx.xxx.xx"
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_3.15.0.HEAD-0-gaea0e2de
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 31D09D8
>     addr: xx.xx.xxx.xx
>     name:
>     type: usrp2
>
> And, subsequent invocations in the near future work.  And, it applies 
> for any other command I have used to invoke the
> USRP device. I would greatly appreciate suggestions from experienced 
> users in this list.  And, one more issue, the above command used to 
> work without passing the "addr" argument. But recently, it doesn't 
> respond if I don't pass that argument.
>
> I would greatly appreciate suggestions on these two points.
>
> Thanks.
>
> Best,
> Dev
>
>
augment your device string with type=n2xx



--------------080702060201080004080504
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/19/2020 05:32 PM, Dev Joshi via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAAq7Emf908sc+rSn87GEy7g6itEiT_PDTfM2y9yv2De=793zjA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div dir="ltr" class="gmail_signature"
            data-smartmail="gmail_signature">
            <div dir="ltr">
              <div>
                <div dir="ltr">
                  <div>
                    <div dir="ltr">
                      <div dir="ltr">
                        <div dir="ltr">
                          <div dir="ltr">
                            <div
style="margin:0px;padding:0px;border:0px;font-stretch:inherit;font-size:12pt;line-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-align:baseline;color:black"><span
style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:large;line-height:inherit;font-family:Arial,Helvetica,sans-serif;vertical-align:baseline;color:rgb(34,34,34)">Hello
                                everyone,<br>
                                <br>
                                I hope everyone is keeping well through
                                these unusual times. I am writing to
                                request assistance on an issue I am
                                facing while running Ettus N200 device.
                                The  device is installed to receive high
                                frequency radio waves and it is
                                connected to an internet port by an
                                Ethernet cable  as is the computer
                                (Ubuntu). I can ping the device from the
                                terminal of the computer. But, whenever
                                I invoke the USRP N200 using any
                                command, it doesn't work as shown below
                                :<br>
                                <br>
                                uhd_find_devices
                                --args="addr=xx.xx.xxx.xx"<br>
                                [INFO] [UHD] linux; GNU C++ version
                                7.5.0; Boost_106501;
                                UHD_3.15.0.HEAD-0-gaea0e2de<br>
                                No UHD Devices Found<br>
                                <br>
                                But, if  I pass the command soon after
                                the first invocation, it works as shown
                                below:<br>
                                <br>
                                uhd_find_devices
                                --args="addr=xx.xx.xxx.xx"<br>
                                [INFO] [UHD] linux; GNU C++ version
                                7.5.0; Boost_106501;
                                UHD_3.15.0.HEAD-0-gaea0e2de<br>
--------------------------------------------------<br>
                                -- UHD Device 0<br>
--------------------------------------------------<br>
                                Device Address:<br>
                                    serial: 31D09D8<br>
                                    addr: xx.xx.xxx.xx<br>
                                    name: <br>
                                    type: usrp2<br>
                                <br>
                                And, subsequent invocations in the near
                                future work.  And, it applies for any
                                other command I have used to invoke the
                                <br>
                                USRP device. I would greatly appreciate
                                suggestions from experienced users in
                                this list.  And, one more issue, the
                                above command used to work without
                                passing the "addr" argument. But
                                recently, it doesn't respond if I don't
                                pass that argument. <br>
                                <br>
                              </span></div>
                            <div
style="margin:0px;padding:0px;border:0px;font-stretch:inherit;font-size:12pt;line-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-align:baseline;color:black"><span
style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:large;line-height:inherit;font-family:Arial,Helvetica,sans-serif;vertical-align:baseline;color:rgb(34,34,34)">I
                                would greatly appreciate suggestions on
                                these two points. <br>
                                <br>
                                Thanks.<br>
                                <br>
                                Best,<br>
                                Dev<br>
                              </span></div>
                            <div
style="margin:0px;padding:0px;border:0px;font-stretch:inherit;font-size:12pt;line-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-align:baseline;color:black"><span
style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:large;line-height:inherit;font-family:Arial,Helvetica,sans-serif;vertical-align:baseline;color:rgb(34,34,34)"><br>
                              </span></div>
                            <br>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    augment your device string with type=n2xx<br>
    <br>
    <br>
  </body>
</html>

--------------080702060201080004080504--


--===============8573213137606021766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8573213137606021766==--

