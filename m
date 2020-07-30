Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D26232A45
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jul 2020 05:11:37 +0200 (CEST)
Received: from [::1] (port=45254 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0yyl-0007Ys-Eg; Wed, 29 Jul 2020 23:11:35 -0400
Received: from mail-il1-f170.google.com ([209.85.166.170]:39084)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k0yyh-0007Sk-IK
 for usrp-users@lists.ettus.com; Wed, 29 Jul 2020 23:11:31 -0400
Received: by mail-il1-f170.google.com with SMTP id z17so6178664ill.6
 for <usrp-users@lists.ettus.com>; Wed, 29 Jul 2020 20:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=FgC9Cl0OUz0P0bBQm6gPzFvBBY4FNZePNczc78yYINc=;
 b=KraOz9+yOCsP6gfPvQCiL2hGzEcOwcZPUiDzUhG7rzJMM9ithdrNXD0HsKdK1Neyzo
 IlOdGrH7y7X+SyPDEXW72M13AKZ/GpJ4NRWRn2F1IADeJBftD+f+r/r+GE5kkXAOCflR
 L+bcvkr0m+saf7Y7GFHkAQy2mLq4aBKl45ZtyqxMQEDS6XAMEq/M6ImpH1X56vtsWVOy
 OazZOnHtqJ5yrmIR7Wxz/O8tjNp2Zjq7q7rCeF5stz1IoZ6AglNDBKKgA5gFUnYGOriS
 zgFceVaWuM5VqgTLywo0orsGCHVdLuGhyXD/DTu7tcqqm2EKPPKvimPJdfVphzIAB0Jt
 cNBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=FgC9Cl0OUz0P0bBQm6gPzFvBBY4FNZePNczc78yYINc=;
 b=G0fPjp7bSgk9XhFZ3gcfYXJgWUQshLe6pUCOStPiyA6LzMWFmFC5Gu+cDzWvFXMsT0
 /M2LJOjDTO1n8eqt/PLcMirWY5oI7I6GiCAjpVItVMVBGi5X+cItGiJ+VZ+prBgePYv0
 c/0x68pCEDxiPoOiAvZ72UmTJbeM31WW8HVlysr8AQ9CLoMJ1Lxx7L2XruPsm2jawwwA
 dMPUM4QPQp6aR1jFaIK+2ZdET9F1ArLv52IAQcruWIpdDlYp13wMQie3HJdYVF3QIhzb
 V7rqdOHZoForMW0jM54L9liDWnrPsqIm5plB4dKyGN8MJa1JENwPY6Jfp+yVxehuXCZX
 WywQ==
X-Gm-Message-State: AOAM533V5/V+ZAgri/YHZhVWnBeWvV6kXA868LsbTHSaGEtdYSOtpMRM
 a+QrXdL91lm3zaivdSB2ySNhdNvJYho=
X-Google-Smtp-Source: ABdhPJz2vtmu/vuwztp2zO5m9yucUREquQy4MpG9vYcZkn5mlf0R6BnZ/7HoapioVn7sSx8EGA4UBw==
X-Received: by 2002:a92:c5c1:: with SMTP id s1mr30999739ilt.144.1596078650517; 
 Wed, 29 Jul 2020 20:10:50 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id n10sm1987161iom.21.2020.07.29.20.10.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 Jul 2020 20:10:50 -0700 (PDT)
Message-ID: <5F223A39.2020708@gmail.com>
Date: Wed, 29 Jul 2020 23:10:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Heng Zhang <zh.heng96@gmail.com>, usrp-users@lists.ettus.com
References: <CAAM_mTRyRd2B7x0ab+K4hT+O+FSWhz-kOsdUGd-ZkZtDZkgKrg@mail.gmail.com>
 <5F216EA2.2000300@gmail.com>
 <1596027782808.5sfxlqzhnayn1yyxszocts5i@android.mail.163.com>
 <CAB__hTSwjcVT6u_h-spQ5+pk-=VV0QJDa0QBnYw3bMCt2Db=Cg@mail.gmail.com>
 <CAAM_mTTLSt=HO80J1f1=zNncevrdeyZ3jWK3NxzOse8nXv+ofQ@mail.gmail.com>
In-Reply-To: <CAAM_mTTLSt=HO80J1f1=zNncevrdeyZ3jWK3NxzOse8nXv+ofQ@mail.gmail.com>
Subject: Re: [USRP-users] SFP port1 of USRP N310 does not work
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
Content-Type: multipart/mixed; boundary="===============7340191791262139788=="
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
--===============7340191791262139788==
Content-Type: multipart/alternative;
 boundary="------------060404060001060604070607"

This is a multi-part message in MIME format.
--------------060404060001060604070607
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/29/2020 10:16 PM, Heng Zhang wrote:
>   I found the SPF+ to RJ45 adapter I used only supports max 1.25Gb 
> data rate. I will get a 10 Gb adapter. Btw, what type of wiring should 
> I use, cat.6. or cat.7?
https://www.lewan.com/blog/comparison-of-10gb-cabling-options-for-your-data-center

>
> Rob Kossler <rkossler@nd.edu <mailto:rkossler@nd.edu>> 于2020年7月29日 
> 周三 下午9:45写道：
>
>     Are you using the XG version of the FPGA image?
>
>     On Wed, Jul 29, 2020 at 9:03 AM Heng Zhang via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>
>         The SFP+ module and optical I used are attchment when buying
>         USRP N310. I will check them.
>
>         	
>         Heng Zhang
>         邮 箱：zh.heng96@gmail.com
>
>         <https://maas.mail.163.com/dashi-web-extend/html/proSignature.html?&name=Heng+Zhang&uid=zh.heng96%40gmail.com&ftlId=1&iconUrl=https%3A%2F%2Fmail-online.nosdn.127.net%2Fqiyelogo%2FdefaultAvatar.png&items=%5B%22%E9%82%AE%E7%AE%B1%EF%BC%9Azh.heng96%40gmail.com%22%5D>
>
>
>         签 名由 网易邮箱 大师
>         <https://mail.163.com/dashi/dlpro.html?from=mail88> 定制
>
>                 On 07/29/2020 20:42, Marcus D. Leech via USRP-users
>                 <mailto:usrp-users@lists.ettus.com> wrote:
>                 On 07/29/2020 08:14 AM, Heng Zhang via USRP-users wrote:
>>                 Dear community,
>>
>>                 I follow this guide
>>                 https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guideand
>>                 now I can connect to N310 by RJ45 port. And I also
>>                 can connect to SFP port0. However, when I  try to use
>>                 SFP port1, it does not work. I found that the green
>>                 LED above SFP port 1 does not even illuminate after
>>                 connecting the PC to it. The network interface
>>                 configuration of PC is shown as follows
>>
>>                 enp1s0    Link encap:Ethernet  HWaddr d4:5d:64:9c:d1:86
>>                           inet addr:192.168.20.1
>>                  Bcast:192.168.20.255  Mask:255.255.255.0
>>                           inet6 addr: fe80::3ac5:ee40:457b:3554/64
>>                 Scope:Link
>>                           UP BROADCAST RUNNING MULTICAST  MTU:9000
>>                  Metric:1
>>                           RX packets:1311 errors:0 dropped:0
>>                 overruns:0 frame:0
>>                           TX packets:1937 errors:0 dropped:0
>>                 overruns:0 carrier:0
>>                           collisions:0 txqueuelen:1000
>>                           RX bytes:191173 (191.1 KB)  TX bytes:249297
>>                 (249.2 KB)
>>
>>                 How can I use 10 Gb SFP port1? Any advice would be
>>                 appreciated.
>>
>>                 Regards,
>>                 Heng
>>
>                 My guess is that you have a problem with your cabling,
>                 or the SFP+ module that you plugged in to the USRP.
>
>                 What SFP+ module are you using?  What type of
>                 wiring/optical?
>
>
>         _______________________________________________
>         USRP-users mailing list
>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------060404060001060604070607
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/29/2020 10:16 PM, Heng Zhang
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAAM_mTTLSt=HO80J1f1=zNncevrdeyZ3jWK3NxzOse8nXv+ofQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">  I found the SPF+ to RJ45 adapter I used only
        supports max 1.25Gb data rate. I will get a 10 Gb adapter. Btw,
        what type of wiring should I use, cat.6. or cat.7?  <br>
      </div>
    </blockquote>
<a class="moz-txt-link-freetext" href="https://www.lewan.com/blog/comparison-of-10gb-cabling-options-for-your-data-center">https://www.lewan.com/blog/comparison-of-10gb-cabling-options-for-your-data-center</a><br>
    <br>
    <blockquote
cite="mid:CAAM_mTTLSt=HO80J1f1=zNncevrdeyZ3jWK3NxzOse8nXv+ofQ@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">Rob Kossler &lt;<a
            moz-do-not-send="true" href="mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;
          于2020年7月29日周三 下午9:45写道：<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">Are you using the XG version of the FPGA image?</div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Wed, Jul 29, 2020 at
              9:03 AM Heng Zhang via USRP-users &lt;<a
                moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div>
                <div
                  style="line-height:1.6;font-family:苹方,微软雅黑,sans-serif">The
                  SFP+ module and optical I used are attchment when
                  buying USRP N310. I will check them.<br>
                  <br>
                </div>
                <div> <a moz-do-not-send="true"
href="https://maas.mail.163.com/dashi-web-extend/html/proSignature.html?&amp;name=Heng+Zhang&amp;uid=zh.heng96%40gmail.com&amp;ftlId=1&amp;iconUrl=https%3A%2F%2Fmail-online.nosdn.127.net%2Fqiyelogo%2FdefaultAvatar.png&amp;items=%5B%22%E9%82%AE%E7%AE%B1%EF%BC%9Azh.heng96%40gmail.com%22%5D"
                    style="display:block;background:rgb(255,255,255);max-width:400px;padding:15px
                    0px 10px;text-decoration:none;outline:none"
                    target="_blank">
                    <table
style="width:100%;max-width:100%;table-layout:fixed;border-collapse:collapse;color:rgb(155,158,161);font-size:14px;line-height:1.3"
                      cellpadding="0">
                      <tbody
                        style="word-break:break-all;font-family:&quot;PingFang
                        SC&quot;,&quot;Hiragino Sans
                        GB&quot;,&quot;WenQuanYi Micro
                        Hei&quot;,&quot;Microsoft
                        Yahei&quot;,微软雅黑,verdana">
                        <tr>
                          <td
                            style="padding:0px;box-sizing:border-box;width:38px"
                            width="38"> <img moz-do-not-send="true"
                              style="vertical-align: middle; width:
                              38px; height: 38px; border-radius: 50%;"
                              src="https://mail-online.nosdn.127.net/qiyelogo/defaultAvatar.png"
                              height="38" width="38"> </td>
                          <td style="padding:0px 0px 0px
                            10px;color:rgb(49,53,59)">
                            <div
style="font-size:16px;font-weight:bold;width:100%;white-space:nowrap;overflow:hidden;text-overflow:ellipsis">Heng
                              Zhang</div>
                          </td>
                        </tr>
                        <tr width="100%"
                          style="width:100%;font-size:14px">
                          <td colspan="2" style="padding:10px 0px
                            0px;width:100%;font-size:14px">
                            <div
                              style="width:100%;word-break:break-all;font-size:14px">邮
                              箱：zh.heng96@gmail.com</div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </a>
                  <div>
                    <p style="border-top:1px solid
rgb(229,229,229);padding-top:8px;font-size:12px;color:rgb(182,184,187);line-height:1.833">签
                      名由 <a moz-do-not-send="true"
                        href="https://mail.163.com/dashi/dlpro.html?from=mail88"
style="color:rgb(106,168,246);text-decoration:none" target="_blank">网易邮箱
                        大师</a> 定制</p>
                  </div>
                  <blockquote
id="gmail-m_7050889868639765546gmail-m_5266112649428560500ntes-andriodmail-quote"
                    style="margin:0px;padding:0px;border:none">
                    <blockquote
id="gmail-m_7050889868639765546gmail-m_5266112649428560500ntes-andriodmail-quote"
                      style="margin:0px;padding:0px;border:none">
                      <div
style="background-color:rgb(242,242,242);color:black;padding-top:6px;padding-bottom:6px;border-radius:3px;margin-top:45px;margin-bottom:20px">
                        <div
style="font-size:14px;line-height:1.5;word-break:break-all;margin-left:10px;margin-right:10px">On
                          <span>07/29/2020 20:42</span>, <a
                            moz-do-not-send="true"
                            style="text-decoration:none;color:rgb(42,151,255)"
                            href="mailto:usrp-users@lists.ettus.com"
                            target="_blank">Marcus D. Leech via
                            USRP-users</a> wrote:</div>
                      </div>
                      <div bgcolor="#FFFFFF">
                        <div>On 07/29/2020 08:14 AM, Heng Zhang via
                          USRP-users wrote:<br>
                        </div>
                        <blockquote type="cite">
                          <div dir="ltr">Dear community,
                            <div><br>
                            </div>
                            <div><span
                                style="font-family:Arial;font-size:14px">I
                                follow this guide </span><a
                                moz-do-not-send="true"
href="https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide"
style="color:rgb(6,73,119);font-family:Arial;font-size:14px"
                                target="_blank">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide</a><span
                                style="font-family:Arial;font-size:14px"> 
                                and now I can connect to N310 by RJ45
                                port. And I also can connect to SFP
                                port0. However, when I  try to use SFP
                                port1, it does not work. I found that
                                the green LED above SFP port 1 does not
                                even illuminate after connecting the PC
                                to it. The network interface
                                configuration of PC is shown as follows</span></div>
                            <div><span
                                style="font-family:Arial;font-size:14px"><br>
                              </span></div>
                            <div>enp1s0    Link encap:Ethernet  HWaddr
                              d4:5d:64:9c:d1:86  <br>
                                        inet addr:192.168.20.1
                               Bcast:192.168.20.255  Mask:255.255.255.0<br>
                                        inet6 addr:
                              fe80::3ac5:ee40:457b:3554/64 Scope:Link<br>
                                        UP BROADCAST RUNNING MULTICAST
                               MTU:9000  Metric:1<br>
                                        RX packets:1311 errors:0
                              dropped:0 overruns:0 frame:0<br>
                                        TX packets:1937 errors:0
                              dropped:0 overruns:0 carrier:0<br>
                                        collisions:0 txqueuelen:1000 <br>
                                        RX bytes:191173 (191.1 KB)  TX
                              bytes:249297 (249.2 KB)<span
                                style="font-family:Arial;font-size:14px"><br>
                              </span></div>
                            <div><span
                                style="font-family:Arial;font-size:14px"><br>
                              </span></div>
                            <div><font color="#000000" face="Lucida Sans
                                Unicode, Lucida Grande, sans-serif"><span
                                  style="font-size:14px">How can I use
                                  10 Gb SFP port1? Any advice would be
                                  appreciated.</span></font></div>
                            <div><font color="#000000" face="Lucida Sans
                                Unicode, Lucida Grande, sans-serif"><span
                                  style="font-size:14px"><br>
                                </span></font></div>
                            <div><font color="#000000" face="Lucida Sans
                                Unicode, Lucida Grande, sans-serif"><span
                                  style="font-size:14px">Regards,</span></font></div>
                            <div><font color="#000000" face="Lucida Sans
                                Unicode, Lucida Grande, sans-serif"><span
                                  style="font-size:14px">Heng</span></font></div>
                          </div>
                          <br>
                        </blockquote>
                        My guess is that you have a problem with your
                        cabling, or the SFP+ module that you plugged in
                        to the USRP.<br>
                        <br>
                        What SFP+ module are you using?  What type of
                        wiring/optical?<br>
                        <br>
                        <br>
                      </div>
                    </blockquote>
                  </blockquote>
                </div>
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
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060404060001060604070607--


--===============7340191791262139788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7340191791262139788==--

