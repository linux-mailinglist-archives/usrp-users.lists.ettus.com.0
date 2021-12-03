Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 157EF4678B9
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 14:49:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA49838513B
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 08:49:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xw1/Rhvx";
	dkim-atps=neutral
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by mm2.emwd.com (Postfix) with ESMTPS id A8724384FC0
	for <usrp-users@lists.ettus.com>; Fri,  3 Dec 2021 08:48:05 -0500 (EST)
Received: by mail-io1-f41.google.com with SMTP id v23so3685003iom.12
        for <usrp-users@lists.ettus.com>; Fri, 03 Dec 2021 05:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=Pc+ua+2sTt/tEKAPn1hV9Yrw0D2qJEVJTDs+QdmNQ/Y=;
        b=Xw1/RhvxhSBI3yZkZdl5tYS66if6Pk9LMzrlsgiZdPdguNJCePhZ4Ur96Q2SniMwLY
         uAgl6x5l1M2dzqDTWGIDSC6wBgRjzjWD/rFJgVssA7s2umar+QYp6sZ8OYn/IiMZCgXM
         s84ejM0yT+jKSW+eDqv7ZXUpRpCjVMQSW1h/annjJww/9jMBVXQunlSxE2pGnQ6E6bSB
         rcVBDH6619cxpp3BPrO3GiQtDpRnYZ59+oTq1E9muUMIYm+Bd8GJYl4ktDzzb4PRhNhE
         9jI01FlRHNM9ZXIPcMX/Olek9vQ6qTNAGc4U/5H74NAP3JVKAD+F44yuCB6oIZUexVAA
         BFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=Pc+ua+2sTt/tEKAPn1hV9Yrw0D2qJEVJTDs+QdmNQ/Y=;
        b=1V4tdgJwTV0++DSviRy3saojpm6pZCAyvYyHz7eEDVD8PQNhdUjIOwAY22t+LUL9Vy
         KnM9G4smLEXL8SQ9XitzeQFzwMD/IdTquawES6rOjDxyR8TJKbSXIRnDzjO0LsVY66PK
         I7PT9tyNPHJiv+pA/AMDhN/rNogkkRAqTUUbIYqJHnE4tfUtFkNVHApnQBrteZzWgm7m
         7GuVNXZlbgEf87TzsyX9JFInuxvsTVOxOIiM3GXnETi9Q/GTdvxtasV8AdJYhZSXQSu2
         Q5/JGO2bqZ4PRbGQBfj+l0jPsBZpysWJq4M5XSWahec1DN87Trig9SaXqUv+InRnkZyg
         wqHQ==
X-Gm-Message-State: AOAM533be7gFGpVdv7uHnTPfWBnvsPHqLKkDgwH/BniP2/+I7+hU/LO9
	xqXHNW8fU63Z5pe7r825Mx4u/OQVavE=
X-Google-Smtp-Source: ABdhPJxvCLfUBQymIVunuU+Mw/ozjVCh5HQArZPOfUHIIEUcsKLyfmT0jqUlK4tIYkEzGnqgjZHzrw==
X-Received: by 2002:a05:6638:1348:: with SMTP id u8mr25583568jad.95.1638539284313;
        Fri, 03 Dec 2021 05:48:04 -0800 (PST)
Received: from [192.168.2.224] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id k7sm1586781iom.34.2021.12.03.05.48.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 05:48:03 -0800 (PST)
Message-ID: <ab9c27dd-963c-c83a-eae3-3afd938c1e08@gmail.com>
Date: Fri, 3 Dec 2021 08:48:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <lCGsct4RCOZWgE6Dmd9IcKXI2ftf6IAZQDVPMRJuyY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <lCGsct4RCOZWgE6Dmd9IcKXI2ftf6IAZQDVPMRJuyY@lists.ettus.com>
Message-ID-Hash: 4DKQTTZJPJGOWUSWZSTYVQMWUJVQKLGR
X-Message-ID-Hash: 4DKQTTZJPJGOWUSWZSTYVQMWUJVQKLGR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4DKQTTZJPJGOWUSWZSTYVQMWUJVQKLGR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0874395988156009728=="

This is a multi-part message in MIME format.
--===============0874395988156009728==
Content-Type: multipart/alternative;
 boundary="------------i640MSGabuLfPiP69v8a8RRl"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------i640MSGabuLfPiP69v8a8RRl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-12-03 07:47, iw1fnw@gmail.com wrote:
>
> This is what I obtain from the two commands. In the image loader 
> command, if I do not specify the image it takes automatically the XG, 
> which is the same I used to program the FPGA with Vivado (2x10G).
>
>
> |abusso@ttclabsdr:~$ uhd_usrp_probe|
> |linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown|
> |-- X300 initialization sequence...|
> |-- Determining maximum frame size... 8000 bytes.|
> |-- Setup basic communication...|
> |-- Loading values from EEPROM...|
> |-- Setup RF frontend clocking...|
> |-- Radio 1x clock:200|
> |-- [DMA FIFO] Running BIST for FIFO 0... pass (Throughput: 1302.6MB/s)|
> |-- [DMA FIFO] Running BIST for FIFO 1... pass (Throughput: 1304.5MB/s)|
> |-- [RFNoC Radio] Performing register loopback test... pass|
> |-- [RFNoC Radio] Performing register loopback test... pass|
> |-- [RFNoC Radio] Performing register loopback test... pass|
> |-- [RFNoC Radio] Performing register loopback test... pass|
> |-- Performing timer loopback test... pass|
> |-- Performing timer loopback test... pass|
> |_____________________________________________________|
> |/|
> || Device: X-Series Device|
> || _____________________________________________________|
> || /|
> || | Mboard: X310|
> || | revision: 11|
> || | revision_compat: 7|
> || | product: 30818|
> || | mac-addr0: 00:80:2f:30:8e:01|
> || | mac-addr1: 00:80:2f:30:8e:02|
> || | gateway: 192.168.10.1|
> || | ip-addr0: 192.168.10.2|
> || | subnet0: 255.255.255.0|
> || | ip-addr1: 192.168.20.2|
> || | subnet1: 255.255.255.0|
> || | ip-addr2: 192.168.30.2|
> || | subnet2: 255.255.255.0|
> || | ip-addr3: 192.168.40.2|
> || | subnet3: 255.255.255.0|
> || | serial: 31D7872|
> || | name: TTC_X310|
> || | FW Version: 5.1|
> || | FPGA Version: 33.0|
> || | RFNoC capable: Yes|
> || ||
> || | Time sources: internal, external, gpsdo|
> || | Clock sources: internal, external, gpsdo|
> || | Sensors: ref_locked|
> || | _____________________________________________________|
> || | /|
> || | | RX Dboard: A|
> || | | ID: UBX-160 v2 (0x007e)|
> || | | Serial: 31D5853|
> || | | _____________________________________________________|
> || | | /|
> || | | | RX Frontend: 0|
> || | | | Name: UBX RX|
> || | | | Antennas: TX/RX, RX2, CAL|
> || | | | Sensors: lo_locked|
> || | | | Freq range: 10.000 to 6000.000 MHz|
> || | | | Gain range PGA0: 0.0 to 31.5 step 0.5 dB|
> || | | | Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz|
> || | | | Connection Type: IQ|
> || | | | Uses LO offset: No|
> || | | _____________________________________________________|
> || | | /|
> || | | | RX Codec: A|
> || | | | Name: ads62p48|
> || | | | Gain range digital: 0.0 to 6.0 step 0.5 dB|
> || | _____________________________________________________|
> || | /|
> || | | RX Dboard: B|
> || | | ID: UBX-160 v2 (0x007e)|
> || | | Serial: 31D5807|
> || | | _____________________________________________________|
> || | | /|
> || | | | RX Frontend: 0|
> || | | | Name: UBX RX|
> || | | | Antennas: TX/RX, RX2, CAL|
> || | | | Sensors: lo_locked|
> || | | | Freq range: 10.000 to 6000.000 MHz|
> || | | | Gain range PGA0: 0.0 to 31.5 step 0.5 dB|
> || | | | Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz|
> || | | | Connection Type: IQ|
> || | | | Uses LO offset: No|
> || | | _____________________________________________________|
> || | | /|
> || | | | RX Codec: B|
> || | | | Name: ads62p48|
> || | | | Gain range digital: 0.0 to 6.0 step 0.5 dB|
> || | _____________________________________________________|
> || | /|
> || | | TX Dboard: A|
> || | | ID: UBX-160 v2 (0x007d)|
> || | | Serial: 31D5853|
> || | | _____________________________________________________|
> || | | /|
> || | | | TX Frontend: 0|
> || | | | Name: UBX TX|
> || | | | Antennas: TX/RX, CAL|
> || | | | Sensors: lo_locked|
> || | | | Freq range: 10.000 to 6000.000 MHz|
> || | | | Gain range PGA0: 0.0 to 31.5 step 0.5 dB|
> || | | | Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz|
> || | | | Connection Type: QI|
> || | | | Uses LO offset: No|
> || | | _____________________________________________________|
> || | | /|
> || | | | TX Codec: A|
> || | | | Name: ad9146|
> || | | | Gain Elements: None|
> || | _____________________________________________________|
> || | /|
> || | | TX Dboard: B|
> || | | ID: UBX-160 v2 (0x007d)|
> || | | Serial: 31D5807|
> || | | _____________________________________________________|
> || | | /|
> || | | | TX Frontend: 0|
> || | | | Name: UBX TX|
> || | | | Antennas: TX/RX, CAL|
> || | | | Sensors: lo_locked|
> || | | | Freq range: 10.000 to 6000.000 MHz|
> || | | | Gain range PGA0: 0.0 to 31.5 step 0.5 dB|
> || | | | Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz|
> || | | | Connection Type: QI|
> || | | | Uses LO offset: No|
> || | | _____________________________________________________|
> || | | /|
> || | | | TX Codec: B|
> || | | | Name: ad9146|
> || | | | Gain Elements: None|
> || | _____________________________________________________|
> || | /|
> || | | RFNoC blocks on this device:|
> || | ||
> || | | * DmaFIFO_0|
> || | | * Radio_0|
> || | | * Radio_1|
> || | | * DDC_0|
> || | | * DDC_1|
> || | | * DUC_0|
> || | | * DUC_1|
> |abusso@ttclabsdr:~$ uhd_image_loader --args "type=x300,addr=192.168.30.2"|
> |linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown|
> |Unit: USRP X310 (31D7872, 192.168.30.2)|
> |FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit|
> |failed.|
> |Error: RuntimeError: Device reported an error during initialization.|
> |abusso@ttclabsdr:~$|
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
What happens if you download fresh images (uhd_images_downloader), and 
try this again?

When the device is running, if you ping it, do you get any errors 
(packet drops)?


--------------i640MSGabuLfPiP69v8a8RRl
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-12-03 07:47, <a class="moz-txt-link-abbreviated" href="mailto:iw1fnw@gmail.com">iw1fnw@gmail.com</a>
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:lCGsct4RCOZWgE6Dmd9IcKXI2ftf6IAZQDVPMRJuyY@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>This is what I obtain from the two commands. In the image
        loader command, if I do not specify the image it takes
        automatically the XG, which is the same I used to program the
        FPGA with Vivado (2x10G).</p>
      <p><br>
      </p>
      <pre><code>abusso@ttclabsdr:~$ uhd_usrp_probe</code></pre>
      <pre><code>linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown</code></pre>
      <pre><code>-- X300 initialization sequence...</code></pre>
      <pre><code>-- Determining maximum frame size... 8000 bytes.</code></pre>
      <pre><code>-- Setup basic communication...</code></pre>
      <pre><code>-- Loading values from EEPROM...</code></pre>
      <pre><code>-- Setup RF frontend clocking...</code></pre>
      <pre><code>-- Radio 1x clock:200</code></pre>
      <pre><code>-- [DMA FIFO] Running BIST for FIFO 0... pass (Throughput: 1302.6MB/s)</code></pre>
      <pre><code>-- [DMA FIFO] Running BIST for FIFO 1... pass (Throughput: 1304.5MB/s)</code></pre>
      <pre><code>-- [RFNoC Radio] Performing register loopback test... pass</code></pre>
      <pre><code>-- [RFNoC Radio] Performing register loopback test... pass</code></pre>
      <pre><code>-- [RFNoC Radio] Performing register loopback test... pass</code></pre>
      <pre><code>-- [RFNoC Radio] Performing register loopback test... pass</code></pre>
      <pre><code>-- Performing timer loopback test... pass</code></pre>
      <pre><code>-- Performing timer loopback test... pass</code></pre>
      <pre><code>  _____________________________________________________</code></pre>
      <pre><code> /</code></pre>
      <pre><code>|       Device: X-Series Device</code></pre>
      <pre><code>|     _____________________________________________________</code></pre>
      <pre><code>|    /</code></pre>
      <pre><code>|   |       Mboard: X310</code></pre>
      <pre><code>|   |   revision: 11</code></pre>
      <pre><code>|   |   revision_compat: 7</code></pre>
      <pre><code>|   |   product: 30818</code></pre>
      <pre><code>|   |   mac-addr0: 00:80:2f:30:8e:01</code></pre>
      <pre><code>|   |   mac-addr1: 00:80:2f:30:8e:02</code></pre>
      <pre><code>|   |   gateway: 192.168.10.1</code></pre>
      <pre><code>|   |   ip-addr0: 192.168.10.2</code></pre>
      <pre><code>|   |   subnet0: 255.255.255.0</code></pre>
      <pre><code>|   |   ip-addr1: 192.168.20.2</code></pre>
      <pre><code>|   |   subnet1: 255.255.255.0</code></pre>
      <pre><code>|   |   ip-addr2: 192.168.30.2</code></pre>
      <pre><code>|   |   subnet2: 255.255.255.0</code></pre>
      <pre><code>|   |   ip-addr3: 192.168.40.2</code></pre>
      <pre><code>|   |   subnet3: 255.255.255.0</code></pre>
      <pre><code>|   |   serial: 31D7872</code></pre>
      <pre><code>|   |   name: TTC_X310</code></pre>
      <pre><code>|   |   FW Version: 5.1</code></pre>
      <pre><code>|   |   FPGA Version: 33.0</code></pre>
      <pre><code>|   |   RFNoC capable: Yes</code></pre>
      <pre><code>|   |</code></pre>
      <pre><code>|   |   Time sources:  internal, external, gpsdo</code></pre>
      <pre><code>|   |   Clock sources: internal, external, gpsdo</code></pre>
      <pre><code>|   |   Sensors: ref_locked</code></pre>
      <pre><code>|   |     _____________________________________________________</code></pre>
      <pre><code>|   |    /</code></pre>
      <pre><code>|   |   |       RX Dboard: A</code></pre>
      <pre><code>|   |   |   ID: UBX-160 v2 (0x007e)</code></pre>
      <pre><code>|   |   |   Serial: 31D5853</code></pre>
      <pre><code>|   |   |     _____________________________________________________</code></pre>
      <pre><code>|   |   |    /</code></pre>
      <pre><code>|   |   |   |       RX Frontend: 0</code></pre>
      <pre><code>|   |   |   |   Name: UBX RX</code></pre>
      <pre><code>|   |   |   |   Antennas: TX/RX, RX2, CAL</code></pre>
      <pre><code>|   |   |   |   Sensors: lo_locked</code></pre>
      <pre><code>|   |   |   |   Freq range: 10.000 to 6000.000 MHz</code></pre>
      <pre><code>|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB</code></pre>
      <pre><code>|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz</code></pre>
      <pre><code>|   |   |   |   Connection Type: IQ</code></pre>
      <pre><code>|   |   |   |   Uses LO offset: No</code></pre>
      <pre><code>|   |   |     _____________________________________________________</code></pre>
      <pre><code>|   |   |    /</code></pre>
      <pre><code>|   |   |   |       RX Codec: A</code></pre>
      <pre><code>|   |   |   |   Name: ads62p48</code></pre>
      <pre><code>|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB</code></pre>
      <pre><code>|   |     _____________________________________________________</code></pre>
      <pre><code>|   |    /</code></pre>
      <pre><code>|   |   |       RX Dboard: B</code></pre>
      <pre><code>|   |   |   ID: UBX-160 v2 (0x007e)</code></pre>
      <pre><code>|   |   |   Serial: 31D5807</code></pre>
      <pre><code>|   |   |     _____________________________________________________</code></pre>
      <pre><code>|   |   |    /</code></pre>
      <pre><code>|   |   |   |       RX Frontend: 0</code></pre>
      <pre><code>|   |   |   |   Name: UBX RX</code></pre>
      <pre><code>|   |   |   |   Antennas: TX/RX, RX2, CAL</code></pre>
      <pre><code>|   |   |   |   Sensors: lo_locked</code></pre>
      <pre><code>|   |   |   |   Freq range: 10.000 to 6000.000 MHz</code></pre>
      <pre><code>|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB</code></pre>
      <pre><code>|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz</code></pre>
      <pre><code>|   |   |   |   Connection Type: IQ</code></pre>
      <pre><code>|   |   |   |   Uses LO offset: No</code></pre>
      <pre><code>|   |   |     _____________________________________________________</code></pre>
      <pre><code>|   |   |    /</code></pre>
      <pre><code>|   |   |   |       RX Codec: B</code></pre>
      <pre><code>|   |   |   |   Name: ads62p48</code></pre>
      <pre><code>|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB</code></pre>
      <pre><code>|   |     _____________________________________________________</code></pre>
      <pre><code>|   |    /</code></pre>
      <pre><code>|   |   |       TX Dboard: A</code></pre>
      <pre><code>|   |   |   ID: UBX-160 v2 (0x007d)</code></pre>
      <pre><code>|   |   |   Serial: 31D5853</code></pre>
      <pre><code>|   |   |     _____________________________________________________</code></pre>
      <pre><code>|   |   |    /</code></pre>
      <pre><code>|   |   |   |       TX Frontend: 0</code></pre>
      <pre><code>|   |   |   |   Name: UBX TX</code></pre>
      <pre><code>|   |   |   |   Antennas: TX/RX, CAL</code></pre>
      <pre><code>|   |   |   |   Sensors: lo_locked</code></pre>
      <pre><code>|   |   |   |   Freq range: 10.000 to 6000.000 MHz</code></pre>
      <pre><code>|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB</code></pre>
      <pre><code>|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz</code></pre>
      <pre><code>|   |   |   |   Connection Type: QI</code></pre>
      <pre><code>|   |   |   |   Uses LO offset: No</code></pre>
      <pre><code>|   |   |     _____________________________________________________</code></pre>
      <pre><code>|   |   |    /</code></pre>
      <pre><code>|   |   |   |       TX Codec: A</code></pre>
      <pre><code>|   |   |   |   Name: ad9146</code></pre>
      <pre><code>|   |   |   |   Gain Elements: None</code></pre>
      <pre><code>|   |     _____________________________________________________</code></pre>
      <pre><code>|   |    /</code></pre>
      <pre><code>|   |   |       TX Dboard: B</code></pre>
      <pre><code>|   |   |   ID: UBX-160 v2 (0x007d)</code></pre>
      <pre><code>|   |   |   Serial: 31D5807</code></pre>
      <pre><code>|   |   |     _____________________________________________________</code></pre>
      <pre><code>|   |   |    /</code></pre>
      <pre><code>|   |   |   |       TX Frontend: 0</code></pre>
      <pre><code>|   |   |   |   Name: UBX TX</code></pre>
      <pre><code>|   |   |   |   Antennas: TX/RX, CAL</code></pre>
      <pre><code>|   |   |   |   Sensors: lo_locked</code></pre>
      <pre><code>|   |   |   |   Freq range: 10.000 to 6000.000 MHz</code></pre>
      <pre><code>|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB</code></pre>
      <pre><code>|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz</code></pre>
      <pre><code>|   |   |   |   Connection Type: QI</code></pre>
      <pre><code>|   |   |   |   Uses LO offset: No</code></pre>
      <pre><code>|   |   |     _____________________________________________________</code></pre>
      <pre><code>|   |   |    /</code></pre>
      <pre><code>|   |   |   |       TX Codec: B</code></pre>
      <pre><code>|   |   |   |   Name: ad9146</code></pre>
      <pre><code>|   |   |   |   Gain Elements: None</code></pre>
      <pre><code>|   |     _____________________________________________________</code></pre>
      <pre><code>|   |    /</code></pre>
      <pre><code>|   |   |       RFNoC blocks on this device:</code></pre>
      <pre><code>|   |   |</code></pre>
      <pre><code>|   |   |   * DmaFIFO_0</code></pre>
      <pre><code>|   |   |   * Radio_0</code></pre>
      <pre><code>|   |   |   * Radio_1</code></pre>
      <pre><code>|   |   |   * DDC_0</code></pre>
      <pre><code>|   |   |   * DDC_1</code></pre>
      <pre><code>|   |   |   * DUC_0</code></pre>
      <pre><code>|   |   |   * DUC_1</code></pre>
      <pre><code>abusso@ttclabsdr:~$ uhd_image_loader --args "type=x300,addr=192.168.30.2"</code></pre>
      <pre><code>linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown</code></pre>
      <pre><code>Unit: USRP X310 (31D7872, 192.168.30.2)</code></pre>
      <pre><code>FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit</code></pre>
      <pre><code>failed.</code></pre>
      <pre><code>Error: RuntimeError: Device reported an error during initialization.</code></pre>
      <pre><code>abusso@ttclabsdr:~$</code></pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    What happens if you download fresh images (uhd_images_downloader),
    and try this again?<br>
    <br>
    When the device is running, if you ping it, do you get any errors
    (packet drops)?<br>
    <br>
    <br>
  </body>
</html>
--------------i640MSGabuLfPiP69v8a8RRl--

--===============0874395988156009728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0874395988156009728==--
