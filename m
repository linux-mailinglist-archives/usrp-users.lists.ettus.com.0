Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA64A17F18
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 19:31:22 +0200 (CEST)
Received: from [::1] (port=50024 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOQPZ-0006Pm-Eg; Wed, 08 May 2019 13:31:21 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:33652)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hOQP1-0006Gj-5t
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 13:31:17 -0400
Received: by mail-qt1-f172.google.com with SMTP id m32so21077989qtf.0
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 10:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=X0kcwAP64IN16gpnWKiLqwqBN3DY7yqFgalAGf7sSdg=;
 b=kwK41e/MoC3sd3Qa0/Mayw0UvqdBKJgtv5repC3QMCY4qTybTgzQpasu8Iz3g894wi
 YeyLcIEHIsS+RkCes9RrN1qdzkm6UVaCgSkgtohtoK/YuKliEVo5/uBSH1jGbaMpzpan
 uFmrO9Ys3N4gRn9fvPB9YYJwnEfQh+WFyrvNjrvEVOUbYCJGjhWKRya/0n4pZa1AIq2h
 lPJsynbkWkcAb2euj0WiYcu+Boelxja4uZmDkP0yZEodyJ1CvywBtWaoECZA0C5d+Omh
 FySvOGRIxtJ+CO4yU8u2ZO2+q/CtojuBSelJ7hNuToc9mo4OsIip85LS8ALjR3J5dlX2
 c+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=X0kcwAP64IN16gpnWKiLqwqBN3DY7yqFgalAGf7sSdg=;
 b=E30czXuw4qq9ROkyxMNu0C9Q4bUZBonO4xWTSFzToXbabSXdQkapcNzwHEQW1Y7qv+
 m2HLS4lj5f9UnguZLaKDPqxqV4AgtvkZLyRHBdtMQZKGnwREVOZTMQzW+fv0wtzTxR/F
 P00UQTvcJFg2n6KQr01FJJS8qPQvTFhbQiUq1VCJdBhM1aPlntfO/VV8kNzAnkl4VSzi
 jp44/g0OqIhY55Vj1/INugjzZkHa8bVIiB/ntbfblutb+eJfU316xQlnwBsZzgK67XDv
 roXVEYcWL6cwfSu5z8yg/wx3t3oSWuKT0Wy3e/6zBrdnGuG1zJeI1+bgGYMeJX3bwqCE
 C4mg==
X-Gm-Message-State: APjAAAV2h1PKVH+P3VPlLd9gLwGbY7k8bHTE0gmaPUyLdy/KYfb6KviB
 kCYc2sYrw62DH7DSLwjlb9DxhmSx5n0=
X-Google-Smtp-Source: APXvYqxDDQb2YZZ9DgI5ncUZkXC/rrVkwgyOv9ZZU5hvt3O0TCtQm7wKBqMnuksV10Kvmn+Hr0k3Gw==
X-Received: by 2002:ac8:3804:: with SMTP id q4mr4610984qtb.139.1557336606554; 
 Wed, 08 May 2019 10:30:06 -0700 (PDT)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id y64sm9994343qkd.71.2019.05.08.10.30.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 10:30:06 -0700 (PDT)
Message-ID: <5CD3121D.6040508@gmail.com>
Date: Wed, 08 May 2019 13:30:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Robin Coxe <robin.coxe@ettus.com>
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com> <5CD30B61.8080700@gmail.com>
 <CAGVTi8UrRix7wt_BxCN8rNBvFGD8d4Uz8Td7hWHGpg+G_=quAw@mail.gmail.com>
In-Reply-To: <CAGVTi8UrRix7wt_BxCN8rNBvFGD8d4Uz8Td7hWHGpg+G_=quAw@mail.gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Bringing an elderly N210 to life by loading
 current firmware/fpga images
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
Cc: USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2675172679950586551=="
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
--===============2675172679950586551==
Content-Type: multipart/alternative;
 boundary="------------010209080300070905000102"

This is a multi-part message in MIME format.
--------------010209080300070905000102
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/08/2019 01:24 PM, Robin Coxe wrote:
> Hi Joe and Jason.  So, I took a walk down Memory Lane and discovered 
> that the N210 was first released by Ettus Research in November 2010, 
> which was about 6 months after we were acquired by National Instruments.
> It is a true statement that v2 of the hardware is quite geriatric and 
> no longer supported in modern versions of UHD.   However, all hope is 
> not lost.
>
> There *is* support for N200/N210 in the oldest version of UHD that is 
> still downloadable on files.ettus.com <http://files.ettus.com>, UHD 
> v.3.8.0.0.   The FPGA images are in this zip file:
> http://files.ettus.com/binaries/images/uhd-images_003.008.000-18-g6647f8cc.zip
>
> We unfortunately don't have a v2 in the office to confirm that it 
> still works, but you might want to take a look.
>
> -Robin
I'm going to go through some old disk drives on mine from "back in the 
day", and see if I have the r2 .bit files.

That can't happen until the weekend, however...


>
>
>
> On Wed, May 8, 2019 at 10:02 AM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 05/08/2019 12:56 PM, Joe Martin via USRP-users wrote:
>>     Wow, okay; that’s disheartening. Thanks much for the info, Jason.
>>      Nope, the Rev3 bit file doesn’t work; tried it.  I’ll see if the
>>     support email adr can be of use.
>>
>>     Joe
>>
>     There was a hardware change, as I recall, between Rev2 and Rev3
>     involving the inputs to the ADCs.
>
>
>>>     On May 8, 2019, at 10:44 AM, Jason Matusiak
>>>     <jason@gardettoengineering.com
>>>     <mailto:jason@gardettoengineering.com>> wrote:
>>>
>>>     Joe, I think you might be SOL.  If you take a look at this
>>>     thread from me last year, I had no luck:
>>>     http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/056223.html
>>>
>>>
>>>     Also, when I pinged Ettus directly, here is some info I got back
>>>     from them (from two different emails in the thread):
>>>     "we've been having some trouble tracking down Rev2 bitfiles,
>>>     because no
>>>     one here was around when that was built. If you're trying to unbrick
>>>     them, Rev3 bitfiles might be OK, but I'm not completely sure.
>>>
>>>     support@ettus.com <mailto:support@ettus.com>might know more by know.
>>>     really sorry, but those Rev2s are just so old. And all the
>>>     people from
>>>     that era seem to be gone. Sorry, can't help you with those Rev2s."
>>>
>>>     ------------------------------------------------------------------------
>>>     *From:*USRP-users <usrp-users-bounces@lists.ettus.com
>>>     <mailto:usrp-users-bounces@lists.ettus.com>> on behalf of Joe
>>>     Martin via USRP-users <usrp-users@lists.ettus.com
>>>     <mailto:usrp-users@lists.ettus.com>>
>>>     *Sent:*Wednesday, May 8, 2019 11:55 AM
>>>     *To:*Joe Martin via USRP-users
>>>     *Subject:*[USRP-users] Bringing an elderly N210 to life by
>>>     loading current firmware/fpga images
>>>     I am trying to bring an elderly N210 r2.0 with unknown history
>>>     to life by loading current UHD firmware and fpga images from a
>>>     1Gigabit ethernet connection on an AMD 2950X, 3.4GHz, 2TB SSD PC
>>>     running Ubuntu 18.04 with UHD 3.14.0.HEAD-0-gd20a7ae2 software
>>>     but having difficulty.
>>>
>>>     Following instructions in “USRP Hardware Driver and USRP Manual:
>>>     USRP2 and N2x0 Series”:
>>>
>>>     My initial action was to load the “usrp_n210_r4_fpga.bit" file
>>>     into the N210 xc3sd3400a FPGA using a Xilinx Platform Cable USB
>>>     II JTAG programming cable from a Win7 PC running Xilinx ISE
>>>     iMPACT, which reported “Program Succeeded” for the action. 
>>>     Ethernet LEDs on the N210 are variously lighted showing activity
>>>     on the connection port.
>>>
>>>     With the N210 connected to the Linux PC 1Gbps ethernet port,
>>>     issuing the following commands result in the responses shown in
>>>     the screenshot image below:
>>>
>>>     <Screenshot from 2019-05-08 08-46-52.png>
>>>
>>>     My (naive!) interpretation of the above responses is that the
>>>     FPGA may not actually have been programmed with the *.bit code
>>>     even though iMPACT reported success in programming.  Can someone
>>>     assist me in understanding whether my interpretation is correct
>>>     or not and, most importantly, suggest what I might try next to
>>>     bring this N210 to life?
>>>
>>>     The “Please run:” suggestion results in the “Received invalid
>>>     reply 32 from device” error.  It seems no matter what I try the
>>>     “Received invalid reply 32 from device” RuntimeError is reported
>>>     back when I try to load any new firmware/FPGA images.
>>>
>>>     Thanks!
>>>
>>>     Joe
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------010209080300070905000102
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/08/2019 01:24 PM, Robin Coxe
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAGVTi8UrRix7wt_BxCN8rNBvFGD8d4Uz8Td7hWHGpg+G_=quAw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">Hi Joe and Jason.  So, I took a walk down
            Memory Lane and discovered that the N210 was first released
            by Ettus Research in November 2010, which was about 6 months
            after we were acquired by National Instruments.
            <div>It is a true statement that v2 of the hardware is quite
              geriatric and no longer supported in modern versions of
              UHD.   However, all hope is not lost.</div>
            <div><br>
            </div>
            <div>There *is* support for N200/N210 in the oldest version
              of UHD that is still downloadable on <a
                moz-do-not-send="true" href="http://files.ettus.com">files.ettus.com</a>,
              UHD v.3.8.0.0.   The FPGA images are in this zip file:</div>
            <div><a moz-do-not-send="true"
href="http://files.ettus.com/binaries/images/uhd-images_003.008.000-18-g6647f8cc.zip">http://files.ettus.com/binaries/images/uhd-images_003.008.000-18-g6647f8cc.zip</a><br>
            </div>
            <div><br>
            </div>
            <div>We unfortunately don't have a v2 in the office to
              confirm that it still works, but you might want to take a
              look.  </div>
            <div><br>
            </div>
            <div>-Robin</div>
          </div>
        </div>
      </div>
    </blockquote>
    I'm going to go through some old disk drives on mine from "back in
    the day", and see if I have the r2 .bit files.<br>
    <br>
    That can't happen until the weekend, however...<br>
    <br>
    <br>
    <blockquote
cite="mid:CAGVTi8UrRix7wt_BxCN8rNBvFGD8d4Uz8Td7hWHGpg+G_=quAw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div><br>
            </div>
            <div><br>
            </div>
          </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Wed, May 8, 2019 at 10:02
            AM Marcus D. Leech via USRP-users &lt;<a
              moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <div class="gmail-m_-1639864966745732941moz-cite-prefix">On
                05/08/2019 12:56 PM, Joe Martin via USRP-users wrote:<br>
              </div>
              <blockquote type="cite"> Wow, okay; that’s disheartening. 
                Thanks much for the info, Jason.  Nope, the Rev3 bit
                file doesn’t work; tried it.  I’ll see if the support
                email adr can be of use.  
                <div><br>
                </div>
                <div>Joe<br>
                  <div><br>
                  </div>
                </div>
              </blockquote>
              There was a hardware change, as I recall, between Rev2 and
              Rev3 involving the inputs to the ADCs.<br>
              <br>
              <br>
              <blockquote type="cite">
                <div>
                  <div>
                    <blockquote type="cite">
                      <div>On May 8, 2019, at 10:44 AM, Jason Matusiak
                        &lt;<a moz-do-not-send="true"
                          href="mailto:jason@gardettoengineering.com"
                          target="_blank">jason@gardettoengineering.com</a>&gt;

                        wrote:</div>
                      <br
                        class="gmail-m_-1639864966745732941Apple-interchange-newline">
                      <div>
                        <div
style="font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">Joe,
                          I think you might be SOL.  If you take a look
                          at this thread from me last year, I had no
                          luck: <a moz-do-not-send="true"
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/056223.html"
                            target="_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/056223.html</a></div>
                        <div
style="font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br>
                        </div>
                        <div
style="font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br>
                        </div>
                        <div
style="font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">Also,

                          when I pinged Ettus directly, here is some
                          info I got back from them (from two different
                          emails in the thread):</div>
                        <div
style="font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">"<span>we've
                            been having some trouble tracking down Rev2
                            bitfiles, because no</span><br>
                          <span>one here was around when that was built.
                            If you're trying to unbrick</span><br>
                          <span>them, Rev3 bitfiles might be OK, but I'm
                            not completely sure.</span></div>
                        <div
style="font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br>
                          <span><a moz-do-not-send="true"
                              href="mailto:support@ettus.com"
                              target="_blank">support@ettus.com</a><span
class="gmail-m_-1639864966745732941Apple-converted-space"> </span>might
                            know more by know.</span></div>
                        <div
style="font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><span>really
                            sorry, but those Rev2s are just so old. And
                            all the people from</span><br>
                          <span>that era seem to be gone. Sorry, can't
                            help you with those Rev2s."</span></div>
                        <div id="gmail-m_-1639864966745732941Signature"
style="font-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none">
                          <div>
                            <div
                              style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br>
                            </div>
                            <hr
                              style="display:inline-block;width:1284.77px">
                            <div
                              id="gmail-m_-1639864966745732941divRplyFwdMsg"
                              dir="ltr"><font style="font-size:11pt"
                                face="Calibri, sans-serif"><b>From:</b><span
class="gmail-m_-1639864966745732941Apple-converted-space"> </span>USRP-users

                                &lt;<a moz-do-not-send="true"
                                  href="mailto:usrp-users-bounces@lists.ettus.com"
                                  target="_blank">usrp-users-bounces@lists.ettus.com</a>&gt;

                                on behalf of Joe Martin via USRP-users
                                &lt;<a moz-do-not-send="true"
                                  href="mailto:usrp-users@lists.ettus.com"
                                  target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                                <b>Sent:</b><span
                                  class="gmail-m_-1639864966745732941Apple-converted-space"> </span>Wednesday,

                                May 8, 2019 11:55 AM<br>
                                <b>To:</b><span
                                  class="gmail-m_-1639864966745732941Apple-converted-space"> </span>Joe
                                Martin via USRP-users<br>
                                <b>Subject:</b><span
                                  class="gmail-m_-1639864966745732941Apple-converted-space"> </span>[USRP-users]

                                Bringing an elderly N210 to life by
                                loading current firmware/fpga images</font>
                              <div> </div>
                            </div>
                            <div style="overflow-wrap: break-word;">I am
                              trying to bring an elderly N210 r2.0 with
                              unknown history to life by loading current
                              UHD firmware and fpga images from a
                              1Gigabit ethernet connection on an AMD
                              2950X, 3.4GHz, 2TB SSD PC running Ubuntu
                              18.04 with UHD 3.14.0.HEAD-0-gd20a7ae2
                              software but having difficulty. 
                              <div><br>
                              </div>
                              <div>Following instructions in “USRP
                                Hardware Driver and USRP Manual: USRP2
                                and N2x0 Series”:</div>
                              <div><br>
                              </div>
                              <div>My initial action was to load the
                                “usrp_n210_r4_fpga.bit" file into the
                                N210 xc3sd3400a FPGA using a Xilinx
                                Platform Cable USB II JTAG programming
                                cable from a Win7 PC running Xilinx ISE
                                iMPACT, which reported “Program
                                Succeeded” for the action.  Ethernet
                                LEDs on the N210 are variously lighted
                                showing activity on the connection port.</div>
                              <div><br>
                              </div>
                              <div>With the N210 connected to the Linux
                                PC 1Gbps ethernet port, issuing the
                                following commands result in the
                                responses shown in the screenshot image
                                below: </div>
                              <div><br>
                              </div>
                              <div><span
id="gmail-m_-1639864966745732941cid:70A3E5A1-EF1B-4D99-B156-F8CD7369666A">&lt;Screenshot

                                  from 2019-05-08 08-46-52.png&gt;</span></div>
                              <div><br>
                              </div>
                              <div>
                                <div>My (naive!) interpretation of the
                                  above responses is that the FPGA may
                                  not actually have been programmed with
                                  the *.bit code even though iMPACT
                                  reported success in programming.  Can
                                  someone assist me in understanding
                                  whether my interpretation is correct
                                  or not and, most importantly, suggest
                                  what I might try next to bring this
                                  N210 to life?  </div>
                                <div><br>
                                </div>
                                <div>The “Please run:” suggestion
                                  results in the “Received invalid reply
                                  32 from device” error.  It seems no
                                  matter what I try the “Received
                                  invalid reply 32 from device”
                                  RuntimeError is reported back when I
                                  try to load any new firmware/FPGA
                                  images.  </div>
                                <div><br>
                                </div>
                                <div>Thanks!</div>
                                <div><br>
                                </div>
                                <div>Joe</div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                  <br>
                </div>
                <br>
                <fieldset
                  class="gmail-m_-1639864966745732941mimeAttachmentHeader"></fieldset>
                <br>
                <pre>_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" class="gmail-m_-1639864966745732941moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" class="gmail-m_-1639864966745732941moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
              </blockquote>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a moz-do-not-send="true"
              href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
            <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010209080300070905000102--


--===============2675172679950586551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2675172679950586551==--

