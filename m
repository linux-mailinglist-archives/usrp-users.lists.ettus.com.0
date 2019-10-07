Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE47CED0C
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2019 21:57:00 +0200 (CEST)
Received: from [::1] (port=58278 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iHZ7r-00065V-1p; Mon, 07 Oct 2019 15:56:59 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:44807)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <frestuc@gmail.com>) id 1iHZ7m-0005wA-Nd
 for usrp-users@lists.ettus.com; Mon, 07 Oct 2019 15:56:54 -0400
Received: by mail-qt1-f171.google.com with SMTP id u40so21000004qth.11
 for <usrp-users@lists.ettus.com>; Mon, 07 Oct 2019 12:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:message-id:date:user-agent
 :mime-version:in-reply-to;
 bh=GRsAP1Q+OaQm0HqRb8e6lia/xXqi6zv+MxbpK68Ionk=;
 b=koKzr6slDGDi+xXqiNzEaD9HKrckFSJEJNE00zHo6Dhp9VQuJo2C9vnCxotVDly36M
 OXjoR0GJU0OSMKoRs83NpoJZGRfVCn1Jtqcjm0pistPsZq7sOzTrL1ThQLJRngVlzySR
 82LK9MBoBjkNVurEHnVw/YZsREJnvmAgCOoGxAenfn9EfSoOmAPejPiayodnzcMFQ9e1
 abaD2oi0P95wntrap9u7K4UWqfMLWhi0B48URL5zSXeTi2euh5yymKfS1DuSwZ4+ogCy
 n0UrG5fKxdkRc4a1FZtxnSm7nRbQekou0YSR17wrWTGE4gEc//za0eLYYhIPasOxm2p2
 hbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:message-id:date
 :user-agent:mime-version:in-reply-to;
 bh=GRsAP1Q+OaQm0HqRb8e6lia/xXqi6zv+MxbpK68Ionk=;
 b=gKRkI3ecMwNABsWBFtzU62Ntb3GTkq8g4JgNvCfbFDPACITy2XHTZUBbuvitFXNAVI
 xdSZ78Wovbxb+21qgb3UcdQyyHlYsp5ryxZvmfXeic46n3fVmY38k4FkNcrKg91Y/24A
 Gh98yFeeAoni6EqIHIne8h3q48VuFo2taKvfL9vRLpbIqwZ0luQKi6zJYWS7TPT23AS5
 gjvedr/zbHTBlXnrpZIOSrJ6PXrStf+9e6j5U2lWLk/dhqrVCGIxKCQkP3tWpHmygO5C
 HApiMUKy4pJPbWe3ZsVidVNhDQG4JjZM9shVDPMQfPDTcumE+PKiaWykvrhRzajJBoGb
 eAjg==
X-Gm-Message-State: APjAAAWvl2JdAiOl69Dki38BIkHvq3xX9QozNeZcbxrqE1kRdLbBJHmt
 jIKM+hLwBFS7B0IRgI6zA8s=
X-Google-Smtp-Source: APXvYqwdcxg1v/k/eZvHTx8ExcqFuMIn51jTL9/GHQJbwzNAJZpxoXLFuooRpojKvS8+8vhF5oMv/A==
X-Received: by 2002:aed:38c7:: with SMTP id k65mr32767621qte.251.1570478174027; 
 Mon, 07 Oct 2019 12:56:14 -0700 (PDT)
Received: from [10.75.8.38] ([129.10.163.26])
 by smtp.gmail.com with ESMTPSA id a36sm8507644qtk.21.2019.10.07.12.56.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Oct 2019 12:56:13 -0700 (PDT)
To: Robin Coxe <coxe@quanttux.com>
References: <dee4f507-7c7c-024c-a57b-a1417d02f98b@gmail.com>
 <5D9B8B8F.4060602@gmail.com>
 <CAKJyDkLLkVB=0adY0+1637TFrVPr0-9jc8KkKpeWXHEKf5phJw@mail.gmail.com>
Message-ID: <6276e191-04d5-6623-828d-15b80220acee@gmail.com>
Date: Mon, 7 Oct 2019 15:56:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKJyDkLLkVB=0adY0+1637TFrVPr0-9jc8KkKpeWXHEKf5phJw@mail.gmail.com>
Subject: Re: [USRP-users] Problems with N210 FPGA bitfile -- image not valid?
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
From: Francesco Restuccia via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Francesco Restuccia <frestuc@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0908306608884238634=="
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
--===============0908306608884238634==
Content-Type: multipart/alternative;
 boundary="------------A73535958BA3512EB74F1C28"

This is a multi-part message in MIME format.
--------------A73535958BA3512EB74F1C28
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Thank you guys, I just loaded the .bin file and it worked. Thought I had 
to use the .bit file instead.
@Robin -- thanks. ISE generates the .bin file along with the .bit file 
so no need to use that.

Francesco

On 10/7/19 3:05 PM, Robin Coxe via USRP-users wrote:
> You can convert your .bit file to a .bin file with this utility:
> https://github.com/EttusResearch/uhd/blob/UHD-3.14/mpm/python/usrp_mpm/fpga_bit_to_bin.py 
>
>
> On Mon, Oct 7, 2019 at 12:02 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 10/07/2019 11:19 AM, Francesco Restuccia via USRP-users wrote:
>     > Hi all,
>     >
>     > I've built an N210 image using the source code provided by Ettus--
>     >
>     > When I try to burn the FPGA image onto the N210, though, I
>     receive the
>     > following error:
>     >
>     > frank@frank-iMac:~$ uhd_image_loader
>     > --args="type=usrp2,addr=192.168.10.2" --no-fw
>     > --fpga-path=/home/frank/u2plus.bit
>     > [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
>     > UHD_3.15.0.git-74-g9ea710b1
>     > Unit: USRP N210 r4 (F2E28F, 192.168.10.2)
>     > Error: RuntimeError: The file at path "/home/frank/u2plus.bit"
>     is not
>     > a valid FPGA image.
>     > frank@frank-iMac:~$
>     >
>     > This is the size of the image:
>     >
>     > frank@frank-iMac:~$ ls -la /home/frank/u2plus.bit
>     > -rw-r--r-- 1 frank frank 1303318 Oct  7 11:07 /home/frank/u2plus.bit
>     > frank@frank-iMac:~$
>     >
>     > Again, no modifications to the Verilog designs -- everything,
>     > including makefile, is out of the box.
>     >
>     > Any suggestion?
>     >
>     > Thanks,
>     >
>     > Francesco
>     >
>     You must use the .bin file uhd_image_loader
>
>
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------A73535958BA3512EB74F1C28
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div>Thank you guys, I just loaded the .bin file and it worked.
      Thought I had to use the .bit file instead.</div>
    <div>@Robin -- thanks. ISE generates the .bin file along with the
      .bit file so no need to use that.</div>
    <div><br>
    </div>
    <div>Francesco<br>
      <br>
    </div>
    <div class="moz-cite-prefix">On 10/7/19 3:05 PM, Robin Coxe via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAKJyDkLLkVB=0adY0+1637TFrVPr0-9jc8KkKpeWXHEKf5phJw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">You can convert your .bit file to a .bin file with
        this utility:
        <div><span
            id="gmail-docs-internal-guid-7432ece8-7fff-c2ac-7697-6efb67d0b890"><a
href="https://github.com/EttusResearch/uhd/blob/UHD-3.14/mpm/python/usrp_mpm/fpga_bit_to_bin.py"
              style="text-decoration-line:none" moz-do-not-send="true"><span style="font-size:11pt;font-family:Arial;background-color:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;text-decoration-line:underline;vertical-align:baseline;white-space:pre-wrap">https://github.com/EttusResearch/uhd/blob/UHD-3.14/mpm/python/usrp_mpm/fpga_bit_to_bin.py</span></a></span>  <br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Oct 7, 2019 at 12:02
          PM Marcus D. Leech via USRP-users &lt;<a
            href="mailto:usrp-users@lists.ettus.com"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          10/07/2019 11:19 AM, Francesco Restuccia via USRP-users wrote:<br>
          &gt; Hi all,<br>
          &gt;<br>
          &gt; I've built an N210 image using the source code provided
          by Ettus--<br>
          &gt;<br>
          &gt; When I try to burn the FPGA image onto the N210, though,
          I receive the <br>
          &gt; following error:<br>
          &gt;<br>
          &gt; frank@frank-iMac:~$ uhd_image_loader <br>
          &gt; --args="type=usrp2,addr=192.168.10.2" --no-fw <br>
          &gt; --fpga-path=/home/frank/u2plus.bit<br>
          &gt; [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
          <br>
          &gt; UHD_3.15.0.git-74-g9ea710b1<br>
          &gt; Unit: USRP N210 r4 (F2E28F, 192.168.10.2)<br>
          &gt; Error: RuntimeError: The file at path
          "/home/frank/u2plus.bit" is not <br>
          &gt; a valid FPGA image.<br>
          &gt; frank@frank-iMac:~$<br>
          &gt;<br>
          &gt; This is the size of the image:<br>
          &gt;<br>
          &gt; frank@frank-iMac:~$ ls -la /home/frank/u2plus.bit<br>
          &gt; -rw-r--r-- 1 frank frank 1303318 Oct  7 11:07
          /home/frank/u2plus.bit<br>
          &gt; frank@frank-iMac:~$<br>
          &gt;<br>
          &gt; Again, no modifications to the Verilog designs --
          everything, <br>
          &gt; including makefile, is out of the box.<br>
          &gt;<br>
          &gt; Any suggestion?<br>
          &gt;<br>
          &gt; Thanks,<br>
          &gt;<br>
          &gt; Francesco<br>
          &gt;<br>
          You must use the .bin file uhd_image_loader<br>
          <br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------A73535958BA3512EB74F1C28--


--===============0908306608884238634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0908306608884238634==--

