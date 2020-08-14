Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2F8244FF2
	for <lists+usrp-users@lfdr.de>; Sat, 15 Aug 2020 00:50:50 +0200 (CEST)
Received: from [::1] (port=57416 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6iXA-0006MD-KY; Fri, 14 Aug 2020 18:50:48 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:45450)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k6iX7-0006Bx-7k
 for usrp-users@lists.ettus.com; Fri, 14 Aug 2020 18:50:45 -0400
Received: by mail-qt1-f181.google.com with SMTP id s23so8142053qtq.12
 for <usrp-users@lists.ettus.com>; Fri, 14 Aug 2020 15:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=/vbn45yNjU9YiGprXzCbZflCxhfR+qDu8rY3WhVob/w=;
 b=ixkvKAWJS4ryAJXC3D9qL5Mn6gcw/f+yJqmcD1L6BIXoVto7gLuKa1LGhleysnZTFC
 HoMbtUFUfu8L+TitwsmYAtPjMMyP3WObFtOfsxrgx7/1KipPVKXIFHX+vbqDfeE5hg0v
 7NXsJhzUwqPWkT3VYpmGzAFJ9TUiQkH23dJwCFg8rhEfhC9dOvb8UqwGB1AmA9v3puiv
 CDcMlKCEIn6BGOXJQ+n4zMC5tOyQ3usgm/aQEgAHBs11pdhYGW8GuVZOdcRaBcB86FRm
 sdFCJqc0FsFQfGd2av2XZY84iLrRxMCgBct5eL8Gedj5CP9WB9UejD3w9mFhEgcUmM3d
 2tpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=/vbn45yNjU9YiGprXzCbZflCxhfR+qDu8rY3WhVob/w=;
 b=sEsqK2JjoJ1Q0GrWzKs8SOu4jsh58/Ogobv6cTF8NP3x29/zOenet1HYW5yciTvChp
 qjQGHKulAH0mI3Mjl4Ewgzr/FobXWoolrlGUycWdbjOzw2btUVDO9HmSs+zD5R18JHzv
 hP8pyJ6eHKYbJlblnUKyX4A8OjJpFJa1LEmhkDcxSRaCtWyvZ9+i3P+z2OlDzIRUtPIW
 HmYKkB5KN8DBanQstfH0Ldry2N5hFxU9EaIck8KrT/iGswyB7CpGior2RL2Uotc9j50m
 yGrs02N2nU6IoM7WI9E6tSUoF7q1EEfU8fd9gfHQ07OHtZI9nZGd+//qLQ42GExojeob
 1tqg==
X-Gm-Message-State: AOAM533LPXdJBF2HPx0t6ihNOMGU3cBoHmVjbBY4iartnr44b1DxYM/1
 iYbk364NMGjFvbtk5t4pNlppZiXb8+mOaw==
X-Google-Smtp-Source: ABdhPJzbJoHb1tQkXvyJIrWrgLjpnkp9kXIh+n3LVSrZFw2xtS+nQiSRibMEmulIgkAyPH7BHdPdOA==
X-Received: by 2002:aed:21a6:: with SMTP id l35mr4164292qtc.178.1597445404426; 
 Fri, 14 Aug 2020 15:50:04 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id l23sm8128980qtr.64.2020.08.14.15.50.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Aug 2020 15:50:03 -0700 (PDT)
Message-ID: <5F37151B.4010500@gmail.com>
Date: Fri, 14 Aug 2020 18:50:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: cherif chibane <cherif.chibane@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAN6+RzmEiJ0ouDEW+bBw55KZRrF2n21O6YdbXJzEYHOP8aU4HA@mail.gmail.com>
 <5F370E35.40200@gmail.com>
 <CAN6+RzmxLLKfYXF9cc26k+P017Li8X7WLxYknNk8PSD4iQJXng@mail.gmail.com>
 <5F3710AA.4030503@gmail.com>
 <CAN6+Rzn0w_cWYfVoY7gTVYe7MajUJbUrYq7POHjsjMgSEjSQDA@mail.gmail.com>
In-Reply-To: <CAN6+Rzn0w_cWYfVoY7gTVYe7MajUJbUrYq7POHjsjMgSEjSQDA@mail.gmail.com>
Subject: Re: [USRP-users] usrp_x310_fpga_RFNOC_HG.bit
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
Content-Type: multipart/mixed; boundary="===============6592672547874375833=="
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
--===============6592672547874375833==
Content-Type: multipart/alternative;
 boundary="------------010105030404060500040602"

This is a multi-part message in MIME format.
--------------010105030404060500040602
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/14/2020 06:33 PM, cherif chibane wrote:
> Hi Marcus,
>
> Is there a copy of it somewhere that I can use, or do I need to 
> recreate it? I have issues with Xilinx license for now.
> ____________
> Cherif Chibane
So, I misspoke.

According to this document here, in order to get the special "RFNOC 
development" images, you'll need to actually have the RFNOC
   development environment set-up.  Looks like you don't have the RFNOC 
version of UHD, so none of the extra FPGA images are being downloaded.

https://kb.ettus.com/Getting_Started_with_RFNoC_Development



>
>
> On Fri, Aug 14, 2020 at 6:31 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 08/14/2020 06:29 PM, cherif chibane wrote:
>>     Hi Marcus,
>>
>>     I am running UHD-3.15.LTS
>>     ____________
>>     Cherif Chibane
>>
>     The RFNOC image is the standard image now (even if you aren't
>     using RFNOC at the UHD API level, the machinery in the X310 FPGA is
>       based on RFNOC).
>
>     So, you probably want:
>
>     usrp_x310_fpga_XG.bit
>>
>>     On Fri, Aug 14, 2020 at 6:21 PM Marcus D. Leech via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     wrote:
>>
>>         On 08/14/2020 04:06 PM, cherif chibane via USRP-users wrote:
>>>         Hello,
>>>
>>>         I would like to use teh X300 bit
>>>         file:|usrp_x310_fpga_RFNOC_XG.bit.|
>>>         |Does it exist somewhere or do I need to re-create it? I
>>>         used |uhd_images_downloader to download the bitfiles but it
>>>         did not come with the files downloaded.
>>>         Thanks,
>>>         Cherif
>>>
>>>         |
>>>         |
>>>         |Does it exist somewhere or do I need to re-create it. I
>>>         used |uhd_images_downloader but it did not come with the
>>>         files downloaded.
>>>         ||
>>>         Thanks,
>>>         Cherif
>>>
>>         What version of UHD are you running?  I think the naming
>>         convention for the standard "factory" BIT files changed quite
>>         a while ago.
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>


--------------010105030404060500040602
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/14/2020 06:33 PM, cherif chibane
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAN6+Rzn0w_cWYfVoY7gTVYe7MajUJbUrYq7POHjsjMgSEjSQDA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Hi Marcus,</div>
        <div><br>
        </div>
        <div>Is there a copy of it somewhere that I can use, or do I
          need to recreate it? I have issues with Xilinx license for
          now.<br>
        </div>
        <div>
          <div>
            <div dir="ltr" class="gmail_signature"
              data-smartmail="gmail_signature">
              <div dir="ltr">
                <div>____________</div>
                Cherif Chibane</div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    So, I misspoke.<br>
    <br>
    According to this document here, in order to get the special "RFNOC
    development" images, you'll need to actually have the RFNOC<br>
      development environment set-up.  Looks like you don't have the
    RFNOC version of UHD, so none of the extra FPGA images are being
    downloaded.<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://kb.ettus.com/Getting_Started_with_RFNoC_Development">https://kb.ettus.com/Getting_Started_with_RFNoC_Development</a><br>
    <br>
    <br>
    <br>
    <blockquote
cite="mid:CAN6+Rzn0w_cWYfVoY7gTVYe7MajUJbUrYq7POHjsjMgSEjSQDA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Fri, Aug 14, 2020 at 6:31
          PM Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 08/14/2020 06:29 PM, cherif chibane wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">
                <div>Hi Marcus,</div>
                <div><br>
                </div>
                <div>I am running UHD-3.15.LTS</div>
                <div>
                  <div>
                    <div dir="ltr">
                      <div dir="ltr">
                        <div>____________</div>
                        Cherif Chibane</div>
                    </div>
                  </div>
                  <br>
                </div>
              </div>
            </blockquote>
            The RFNOC image is the standard image now (even if you
            aren't using RFNOC at the UHD API level, the machinery in
            the X310 FPGA is<br>
              based on RFNOC).<br>
            <br>
            So, you probably want:<br>
            <br>
            usrp_x310_fpga_XG.bit<br>
            <blockquote type="cite"><br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Fri, Aug 14, 2020
                  at 6:21 PM Marcus D. Leech via USRP-users &lt;<a
                    moz-do-not-send="true"
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank">usrp-users@lists.ettus.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div bgcolor="#FFFFFF">
                    <div>On 08/14/2020 04:06 PM, cherif chibane via
                      USRP-users wrote:<br>
                    </div>
                    <blockquote type="cite">
                      <div dir="ltr">
                        <div dir="ltr">
                          <div dir="ltr">
                            <div>Hello,</div>
                            <div><br>
                            </div>
                            <div>I would like to use teh X300 bit file:<code>  

                                usrp_x310_fpga_RFNOC_XG.bit.</code></div>
                            <div><code>Does it exist somewhere or do I
                                need to re-create it? I used  </code>uhd_images_downloader

                              to download the bitfiles but it did not
                              come with the files downloaded.</div>
                            <div>
                              <pre style="white-space:pre-wrap">Thanks,
</pre>
                              <pre style="white-space:pre-wrap">Cherif
</pre>
                            </div>
                            <div><br>
                            </div>
                            <div><code><br>
                              </code></div>
                            <div><code>Does it exist somewhere or do I
                                need to re-create it. I used  </code>uhd_images_downloader

                              but it did not come with the files
                              downloaded.<br>
                              <code></code>
                              <pre style="white-space:pre-wrap">Thanks,
</pre>
                              <pre style="white-space:pre-wrap">Cherif
</pre>
                            </div>
                            <br>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                    What version of UHD are you running?  I think the
                    naming convention for the standard "factory" BIT
                    files changed quite a while ago.<br>
                    <br>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a moz-do-not-send="true"
                    href="mailto:USRP-users@lists.ettus.com"
                    target="_blank">USRP-users@lists.ettus.com</a><br>
                  <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                    rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010105030404060500040602--


--===============6592672547874375833==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6592672547874375833==--

