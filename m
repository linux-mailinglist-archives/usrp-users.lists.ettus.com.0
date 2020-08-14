Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CC8244FE4
	for <lists+usrp-users@lfdr.de>; Sat, 15 Aug 2020 00:39:05 +0200 (CEST)
Received: from [::1] (port=57326 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6iLn-0005hl-Rr; Fri, 14 Aug 2020 18:39:03 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:43708)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k6iLk-0005an-8W
 for usrp-users@lists.ettus.com; Fri, 14 Aug 2020 18:39:00 -0400
Received: by mail-qk1-f173.google.com with SMTP id 2so9761022qkf.10
 for <usrp-users@lists.ettus.com>; Fri, 14 Aug 2020 15:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=svKH6uCugEimrXAYqOkpGMlZQBU85uFyGidGXg5O0l4=;
 b=tnhqBVU+BzswlcNYOVcd6nUvYM6Qo1GT6HH9sisr/WFDmoQscHEAtGJU3omXSeDhUl
 LPOs434vjE/k7JcNY4g9JdoWUVkf/nMD3Gaz5BoaORkScUY2nJElqKtoUzfW5H5KkZiq
 RX0fSajFUUCFJ+pzr+eg496/QsMJKsxm57weTN7ZkoYEd+AQsrecvhpLQ7qd47vR824r
 3py5WETVka3M8xJPtZzuB5miEmR4j1cXGZuUixW/Twe7gZf1J4G73o3ZcKmi6w6aSlYJ
 NsnYpSzOnlEHfFPmm1XCTrz3DuWY7COQL72g/4gtM0zJRccZxBq+El9BpWEc3N5IRPws
 XhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=svKH6uCugEimrXAYqOkpGMlZQBU85uFyGidGXg5O0l4=;
 b=K/T84ugZYEok7d4cGO5aGGUF+2JMX3Ob5FHbC1O7P7pkRGG3M2Za+691pbu0tefkd0
 +G9361L3jC+sZNALo7y6hSFDUwQM6O/YicxIBTUbNL5BP2NKhlyCN0sa357QL2AAwJ8A
 jJ0RULoRAVgPqfigqB2Iye1dZeph3oKyn13IfvWqjfVKD6Fk+EbucrwFnn84218A0vy4
 vjo4BwGVtXtSFVLojARBvnTfH1NMRpYC17Og4lfVbr98EGwN8bqQOtqu6DcqLCdTZS3H
 exA+BP/Is90LyhxSrIT/DdmrdlspX5yBrQlw0H71pc7O1K1rwD6gNqv0eMyznL6yTJZm
 j4Bg==
X-Gm-Message-State: AOAM532x7lW1X+iV3cJxW/juDbX/ctf+FvjJeC/uAjE5i9VopvsBcCZy
 DW58HmZ/NCajWcbOhbogMXQZnoM8jMaFEA==
X-Google-Smtp-Source: ABdhPJwop7w98HKlgmK8YyNb80eQAI26eG3F65FcnX8/0WBSahXRtdLm+aq7s+W3ArioeUW5LEF/sA==
X-Received: by 2002:ae9:e857:: with SMTP id a84mr4173139qkg.100.1597444699413; 
 Fri, 14 Aug 2020 15:38:19 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id y14sm11784420qtc.84.2020.08.14.15.38.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Aug 2020 15:38:18 -0700 (PDT)
Message-ID: <5F37125A.90805@gmail.com>
Date: Fri, 14 Aug 2020 18:38:18 -0400
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
Content-Type: multipart/mixed; boundary="===============1182819374344425369=="
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
--===============1182819374344425369==
Content-Type: multipart/alternative;
 boundary="------------010803000406010902040407"

This is a multi-part message in MIME format.
--------------010803000406010902040407
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/14/2020 06:33 PM, cherif chibane wrote:
> Hi Marcus,
>
> Is there a copy of it somewhere that I can use, or do I need to 
> recreate it? I have issues with Xilinx license for now.
> ____________
> Cherif Chibane
>
Is there some special feature of that (AFAIR, old) FPGA image that is 
not available in the current one?  Was it a custom image?  If so, you'll
   need to recreate it.

Generally, if you try to use an older FPGA image with newer UHD, it's 
unlikely to work.

So, if you really need the older FPGA image, you would likely need to go 
back to an older version of UHD, and use uhd_images_downloader
   to fetch the images.

But again, unless there's some special feature that you were using from 
that image, the current-as-of-UHD-3.15 images should be just fine.


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


--------------010803000406010902040407
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
          <br>
        </div>
      </div>
    </blockquote>
    Is there some special feature of that (AFAIR, old) FPGA image that
    is not available in the current one?  Was it a custom image?  If so,
    you'll<br>
      need to recreate it.<br>
    <br>
    Generally, if you try to use an older FPGA image with newer UHD,
    it's unlikely to work.<br>
    <br>
    So, if you really need the older FPGA image, you would likely need
    to go back to an older version of UHD, and use uhd_images_downloader<br>
      to fetch the images.<br>
    <br>
    But again, unless there's some special feature that you were using
    from that image, the current-as-of-UHD-3.15 images should be just
    fine.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAN6+Rzn0w_cWYfVoY7gTVYe7MajUJbUrYq7POHjsjMgSEjSQDA@mail.gmail.com"
      type="cite"><br>
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

--------------010803000406010902040407--


--===============1182819374344425369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1182819374344425369==--

